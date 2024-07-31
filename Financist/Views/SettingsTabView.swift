//
//  SettingsTabView.swift
//  Financist
//
//  Created by Marcel Weikum on 31.07.24.
//

import SwiftUI

struct SettingsTabView: View {
    @AppStorage("selectedCurrency") private var selectedCurrency: String = "EUR"
    private let currencies = ["EUR", "USD", "GBP", "JPY"]
    private let currencySymbols = ["EUR": "€", "USD": "$", "GBP": "£", "JPY": "¥"]

    var body: some View {
        Form {
            Section(header: Text(NSLocalizedString("Currency", comment: ""))) {
                Picker(selection: $selectedCurrency, label: Text("Currency")) {
                    ForEach(currencies, id: \.self) { currency in
                        HStack {
                            Text(currency)
                            Text(currencySymbols[currency] ?? "")
                        }
                    }
                }
            }
        }
        .navigationBarTitle(NSLocalizedString("Settings", comment: ""), displayMode: .inline)
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
