import SwiftUI

struct EditMoneyView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    var money: FetchedResults<Money>.Element
    
    @State private var name = ""
    @State private var amount = Double()
    @AppStorage("selectedCurrency") private var selectedCurrency: String = "EUR"
    @State private var selected = 0
    @State private var showingAlert = false
    private let currencySymbols = ["EUR": "€", "USD": "$", "GBP": "£", "JPY": "¥"]
    
    var body: some View {
        VStack {
            Text(NSLocalizedString("Edit Transaction", comment: ""))
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Spacer()
            
            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text(NSLocalizedString("Title", comment: ""))
                        .foregroundColor(.gray)
                    TextField(NSLocalizedString("Enter title", comment: ""), text: $name)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                }
                
                VStack(alignment: .leading) {
                    Text(NSLocalizedString("Amount", comment: ""))
                        .foregroundColor(.gray)
                    TextField("\(NSLocalizedString("Enter amount", comment: "")) \(currencySymbols[selectedCurrency] ?? "")", value: $amount, format: .number)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .keyboardType(.decimalPad)
                        .foregroundColor(selected == 0 ? Color.green : Color.red)
                }
                
                Picker(NSLocalizedString("Income or Expense?", comment: ""), selection: $selected) {
                    Text(NSLocalizedString("Income", comment: ""))
                        .tag(0)
                    Text(NSLocalizedString("Expense", comment: ""))
                        .tag(1)
                }
                .pickerStyle(.segmented)
            }
            .padding(.horizontal)
            .onAppear {
                name = money.name!
                amount = money.amount
                
                if amount < 0 {
                    amount *= -1
                    selected = 1
                }
            }
            
            Spacer()
            
            Button(action: {
                if amount <= 0 {
                    showingAlert = true
                } else {
                    if selected == 0 {
                        if amount < 0 {
                            amount *= -1
                        }
                        DataController().editMoney(money: money, name: name, amount: amount, context: managedObjContext)
                    } else {
                        if amount > 0 {
                            amount *= -1
                        }
                        DataController().editMoney(money: money, name: name, amount: amount, context: managedObjContext)
                    }
                    dismiss()
                }
            }) {
                Text(NSLocalizedString("Save", comment: ""))
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(NSLocalizedString("Warning!", comment: "")), message: Text(NSLocalizedString("Amount must be greater than 0!", comment: "")), dismissButton: .default(Text(NSLocalizedString("Got it", comment: ""))))
            }
            .padding(.bottom, 20)
        }
    }
}

struct EditMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        EditMoneyView(money: FetchedResults<Money>.Element())
    }
}
