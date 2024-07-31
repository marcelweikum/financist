//
//  LaunchScreenView.swift
//  Financist
//
//  Created by Marcel Weikum on 05.10.22.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        Image("Logo Grün")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 1.5)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
