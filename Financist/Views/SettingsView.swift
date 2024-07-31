//
//  SettingsView.swift
//  Financist
//
//  Created by Marcel Weikum on 05.10.22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                NavigationLink(destination: SettingsTabView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial)
                            .padding(.horizontal, 10)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 10)
                        HStack {
                            Label("", systemImage: "gearshape")
                            Text(NSLocalizedString("Settings", comment: ""))
                        }
                    }
                    .foregroundColor(Color.black)
                }

                NavigationLink(destination: InfoView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial)
                            .padding(.horizontal, 10)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 10)
                        HStack {
                            Label("", systemImage: "info.circle")
                            Text(NSLocalizedString("Information", comment: ""))
                        }
                    }
                    .foregroundColor(Color.black)
                }
            }
            .padding(.top, 40)
            
            Spacer()
        }
        .navigationBarTitle(NSLocalizedString("Settings", comment: ""), displayMode: .inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
