import SwiftUI

struct AddMoneyView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var amount = Double()
    @AppStorage("selectedCurrency") private var selectedCurrency: String = "EUR"
    @State private var selected = 0
    @State private var showingAlert = false
    private let currencySymbols = ["EUR": "€", "USD": "$", "GBP": "£", "JPY": "¥"]

    var body: some View {
        VStack {
            Text(NSLocalizedString("Add Transaction", comment: ""))
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
            
            Spacer()
            
            Button(action: {
                if amount <= 0 {
                    showingAlert = true
                } else {
                    if selected == 0 {
                        DataController().addMoney(name: name, amount: amount, context: managedObjContext)
                    } else {
                        amount *= -1
                        DataController().addMoney(name: name, amount: amount, context: managedObjContext)
                    }
                    dismiss()
                }
            }) {
                Text(NSLocalizedString("Add", comment: ""))
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

struct AddMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        AddMoneyView()
    }
}
