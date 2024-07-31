//
//  FinancistApp.swift
//  Financist
//
//  Created by Marcel Weikum on 09.08.22.
//

import SwiftUI

@main
struct FinancistApp: App {
    @StateObject private var dataController = DataController()
    @StateObject var viewData = ViewData()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(viewData)
        }
    }
}
