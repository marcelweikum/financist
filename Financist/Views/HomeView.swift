//
//  HomeView.swift
//  Financist
//
//  Created by Marcel Weikum on 27.09.22.
//

import SwiftUI
import CoreData

class ViewData: ObservableObject {
    @Published var showCurrentMonthOnly: Bool = false
}

struct CustomSlider: View {
    @Binding var showCurrentMonthOnly: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background on which the text will slide
                Color(white: 0.9)
                    .cornerRadius(15)
                    .onTapGesture {
                        withAnimation {
                            showCurrentMonthOnly.toggle()
                        }
                    }
                
                // Slider text
                Text(showCurrentMonthOnly ? "Current Month" : "Total")
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width / 2, alignment: .center)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
                    .offset(x: showCurrentMonthOnly ? geometry.size.width / 4 : -geometry.size.width / 4)
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onEnded { _ in
                                withAnimation {
                                    showCurrentMonthOnly.toggle()
                                }
                            }
                    )
            }
        }
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var money: FetchedResults<Money>
    
    static var previews: some View {
        HomeView()
    }
}

struct HomeView: View {
    @EnvironmentObject var viewData: ViewData
    @AppStorage("selectedCurrency") private var selectedCurrency: String = "EUR"
    private let currencySymbols = ["EUR": "€", "USD": "$", "GBP": "£", "JPY": "¥"]

    @Environment(\.colorScheme) var colorScheme
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var money: FetchedResults<Money>
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    ZStack {
                        Image("Title")
                            .resizable()
                            .scaledToFill()
                            .frame(height: UIScreen.main.bounds.height / 2.5)
                            .clipped()
                            .cornerRadius(20)
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.ultraThinMaterial)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3.25)
                            VStack(alignment: .center) {
                                Text("Available")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text("\(totalMoney(), specifier: "%.2f") \(currencySymbols[selectedCurrency] ?? "")")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.largeTitle)
                                HStack {
                                    Spacer()
                                    VStack(alignment: .center) {
                                        Text("Income")
                                            .foregroundColor(colorScheme == .dark ? Color("DarkGreen") : Color("LightGreen"))
                                            .fontWeight(.semibold)
                                        HStack {
                                            Label("", systemImage: "arrow.up.circle")
                                                .foregroundColor(colorScheme == .dark ? Color("DarkGreen") : Color("LightGreen"))
                                            Text("\(posMoney(), specifier: "%.2f") \(currencySymbols[selectedCurrency] ?? "")")
                                                .bold()
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Spacer()
                                    VStack(alignment: .center) {
                                        Text("Expenses")
                                            .foregroundColor(colorScheme == .dark ? Color("DarkRed") : Color("LightRed"))
                                            .fontWeight(.semibold)
                                        HStack {
                                            Label("", systemImage: "arrow.down.circle")
                                                .foregroundColor(colorScheme == .dark ? Color("DarkRed") : Color("LightRed"))
                                            Text("\(negMoney(), specifier: "%.2f") \(currencySymbols[selectedCurrency] ?? "")")
                                                .bold()
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Spacer()
                                }
                                .padding()
                            }
                        }
                    }
                    VStack {
                        CardView()
                    }
                    .padding(5)
                    
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top)
            }
            .ignoresSafeArea()
        }
    }
    
    private func totalMoney() -> Double {
        let data: [Money] = viewData.showCurrentMonthOnly ? currentMonthMoney() : Array(money)
        return data.reduce(0, { $0 + $1.amount })
    }

    private func posMoney() -> Double {
        let data: [Money] = viewData.showCurrentMonthOnly ? currentMonthMoney() : Array(money)
        return data.filter { $0.amount > 0 }.reduce(0, { $0 + $1.amount })
    }

    private func negMoney() -> Double {
        let data: [Money] = viewData.showCurrentMonthOnly ? currentMonthMoney() : Array(money)
        return data.filter { $0.amount < 0 }.reduce(0, { $0 + $1.amount })
    }

    
    private func currentMonthMoney() -> [Money] {
        let fetchRequest: NSFetchRequest<Money> = Money.fetchRequest()
        
        let calendar = Calendar.current
        let now = Date()
        guard let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: now)) else {
            return []
        }
        guard let endOfMonth = calendar.date(byAdding: DateComponents(month: 1, second: -1), to: startOfMonth) else {
            return []
        }
        fetchRequest.predicate = NSPredicate(format: "(date >= %@) AND (date <= %@)", startOfMonth as NSDate, endOfMonth as NSDate)
        fetchRequest.sortDescriptors = [NSSortDescriptor(keyPath: \Money.date, ascending: false)]

        do {
            let results = try managedObjContext.fetch(fetchRequest)
            return results
        } catch {
            print("Error fetching current month money: \(error)")
            return []
        }
    }
}

struct DeletionInfo {
    var month: String
    var index: Int
}

private func monthYearDateFormatter() -> DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM yyyy"
    formatter.locale = Locale.current
    return formatter
}

private func dayMonthYearDateFormatter() -> DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd MMMM yyyy"
    formatter.locale = Locale.current
    return formatter
}

struct CardView: View {
    @EnvironmentObject var viewData: ViewData
    @AppStorage("selectedCurrency") private var selectedCurrency: String = "EUR"
    private let currencySymbols = ["EUR": "€", "USD": "$", "GBP": "£", "JPY": "¥"]
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var money: FetchedResults<Money>
    
    @State private var isDeleting = false
    @State private var deletionInfo: DeletionInfo?
    @State private var cardOffset: CGSize = .zero // New state variable for the offset
    
    @State private var filterType: FilterType = .all // Current filter state
    
    @State private var searchText: String = ""
    
    enum FilterType {
        case all
        case income
        case expense
    }
    
    var filteredMoney: [Money] {
        let filteredByType: [Money]
        switch filterType {
        case .all:
            filteredByType = Array(money)
        case .income:
            filteredByType = Array(money.filter { $0.amount > 0 })
        case .expense:
            filteredByType = Array(money.filter { $0.amount < 0 })
        }
        
        let filteredByTime: [Money]
        if viewData.showCurrentMonthOnly {
            let currentMonth = Calendar.current.component(.month, from: Date())
            filteredByTime = filteredByType.filter { money in
                guard let moneyDate = money.date else {
                    return false
                }
                let moneyMonth = Calendar.current.component(.month, from: moneyDate)
                return moneyMonth == currentMonth
            }
        } else {
            filteredByTime = filteredByType
        }
        
        if searchText.isEmpty {
            return filteredByTime
        } else {
            return filteredByTime.filter { $0.name?.localizedCaseInsensitiveContains(searchText) == true }
        }
    }
    
    private func groupByMonth() -> [(month: String, money: [Money])] {
        let groupedMoney = Dictionary(grouping: filteredMoney) { moneyItem -> Date in
            guard let date = moneyItem.date else {
                return Date(timeIntervalSince1970: 0) // Default date, you can handle this as you like
            }
            var calendar = Calendar.current
            calendar.timeZone = TimeZone(secondsFromGMT: 0)!
            return calendar.date(from: calendar.dateComponents([.year, .month], from: date))!
        }
        
        let dateFormatter = monthYearDateFormatter()
        
        return groupedMoney
            .sorted { $0.key > $1.key } // This sorts the dates in descending order
            .map { (month: dateFormatter.string(from: $0.key), money: $0.value) }
    }
    
    private func deleteMoney() {
        guard let info = deletionInfo else { return }
        let moneyArray = groupByMonth().first { $0.month == info.month }?.money
        
        if let moneyItemToDelete = moneyArray?[info.index] {
            managedObjContext.delete(moneyItemToDelete)
            
            do {
                try managedObjContext.save()
            } catch {
                print("Error deleting item: \(error.localizedDescription)")
            }
        }
        
        // Reset deletion state
        isDeleting = false
        deletionInfo = nil
    }
    
    var body: some View {
        VStack {
            HStack {
                CustomSlider(showCurrentMonthOnly: $viewData.showCurrentMonthOnly)
            }
            .padding(.horizontal, 5)
            .padding(.bottom, 30)
            HStack {
                Button(action: {
                    
                }) {
                    NavigationLink(destination: SettingsView()) {
                        LinearGradient(gradient: Gradient(colors: [.pink, .blue]), startPoint: .top, endPoint: .bottom)
                            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.height / 30)
                            .mask(Image(systemName: "gear.circle"))
                            .font(.title)
                    }
                }
                Spacer()
                Picker("Filter", selection: $filterType) { // Filter selection
                    Text("All").tag(FilterType.all)
                    Text("Income").tag(FilterType.income)
                    Text("Expenses").tag(FilterType.expense)
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: AddMoneyView()) {
                        LinearGradient(gradient: Gradient(colors: [.pink, .blue]), startPoint: .top, endPoint: .bottom)
                            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.height / 30)
                            .mask(Image(systemName: "plus.circle"))
                            .font(.title)
                    }
                }
            }
            .padding(.bottom, 10)
            HStack {
                ZStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                    TextField("Search", text: $searchText)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .cornerRadius(20)
                }
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
        }
        .padding(.vertical, 10)
        .background(LinearGradient(gradient: Gradient(colors: [.clear, .gray.opacity(0.25)]), startPoint: .bottom, endPoint: .top))
        .cornerRadius(10)
        
        VStack {
            ForEach(groupByMonth(), id: \.month) { month, moneyArray in
                Section(header: Text(month)) {
                    ForEach(Array(moneyArray.enumerated()), id: \.element) { index, money in
                        NavigationLink(destination: EditMoneyView(money: money)) {
                            ZStack {
                                if money.amount > 0 {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(LinearGradient(gradient: Gradient(colors: [.clear, .green.opacity(0.25)]), startPoint: .trailing, endPoint: .leading))
                                        .frame(height: UIScreen.main.bounds.width / 8)
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text(money.name!)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                                .lineLimit(1)
                                            Text("\(money.amount, specifier: "%.2f") \(currencySymbols[selectedCurrency] ?? "")")
                                                .foregroundColor(colorScheme == .dark ? money.amount > 0 ? Color("LightGreen") : Color("LightRed") : money.amount > 0 ? Color("DarkGreen") : Color("DarkRed"))
                                                .lineLimit(1)
                                        }
                                        .padding(.leading, 10)
                                        Spacer()
                                        Text("\(money.date!, formatter: dayMonthYearDateFormatter())")
                                            .font(.caption)
                                            .foregroundColor(Color.gray)
                                            .lineLimit(1)
                                            .padding(.trailing, 10)
                                    }
                                } else {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(LinearGradient(gradient: Gradient(colors: [.clear, .red.opacity(0.25)]), startPoint: .leading, endPoint: .trailing))
                                        .frame(height: UIScreen.main.bounds.width / 8)
                                    HStack {
                                        Text("\(money.date!, formatter: dayMonthYearDateFormatter())")
                                            .font(.caption)
                                            .foregroundColor(Color.gray)
                                            .lineLimit(1)
                                            .padding(.leading, 10)
                                        Spacer()
                                        VStack(alignment: .trailing) {
                                            Text(money.name!)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                                .lineLimit(1)
                                            Text("\(money.amount, specifier: "%.2f") \(currencySymbols[selectedCurrency] ?? "")")
                                                .foregroundColor(colorScheme == .dark ? money.amount > 0 ? Color("LightGreen") : Color("LightRed") : money.amount > 0 ? Color("DarkGreen") : Color("DarkRed"))
                                                .lineLimit(1)
                                        }
                                        .padding(.trailing, 10)
                                    }
                                }
                            }
                            // Space above
                            .frame(maxWidth: .infinity) // Full screen width
                            .background(
                                GeometryReader { geometry in
                                    // Overlapping rectangles for drag gesture
                                    if isDeleting && deletionInfo?.month == month && deletionInfo?.index == index {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(.red, lineWidth: 5)
                                            .frame(width: geometry.size.width, height: geometry.size.height)
                                    } else {
                                        Color.clear
                                    }
                                }
                            )
                            .contentShape(Rectangle())
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        if abs(value.translation.width) > 10 { // Check the absolute offset
                                            if value.translation.width < 0 {
                                                isDeleting = true
                                                deletionInfo = DeletionInfo(month: month, index: index)
                                                cardOffset.width = value.translation.width
                                            } else {
                                                isDeleting = false
                                                deletionInfo = nil
                                                cardOffset.width = 0
                                            }
                                        }
                                    }
                                    .onEnded { value in
                                        if value.translation.width < 0 { // Distance check
                                            deleteMoney()
                                        }
                                        isDeleting = false
                                        deletionInfo = nil
                                        cardOffset = .zero // Reset the offset
                                    }
                            )
                            .animation(.easeInOut(duration: 0.3)) // Update animation
                            .offset(x: isDeleting && deletionInfo?.month == month && deletionInfo?.index == index ? cardOffset.width : 0) // Move the item
                            
                            if isDeleting && deletionInfo?.month == month && deletionInfo?.index == index { // Add the trash icon
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Image(systemName: "trash")
                                            .foregroundColor(.red)
                                            .font(.title)
                                            .padding(.trailing, 20)
                                            .offset(y: -10) // Vertical offset
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 5)
    }
}
 
