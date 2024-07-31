//
//  InfoView.swift
//  Financist
//
//  Created by Marcel Weikum on 05.10.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text("Changes:")
                Text("- Money add/edit menu visual redesign")
                Text("- Color changes by income/expense")
                Text("- Header got repositioned in Money add/edit menu")
                Text("- Currency representation changed")
                Text("- Settings menu changed")
                Text("- Custom deletion function added")
                Text("- General filtering added")
                Text("- Search filtering added")
            }
            .padding()
            
            VStack(spacing: 10) {
                Spacer()
                Text("App: Financist")
                    .foregroundColor(Color.gray)
                Text("Version: 1.2.2")
                    .foregroundColor(Color.gray)
                Text("Developer: Marcel Weikum")
                    .foregroundColor(Color.gray)
                Text("Last Updated: 20.06.2023")
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
