//
//  DataController.swift
//  Financist
//
//  Created by Marcel Weikum on 09.08.22.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "MoneyModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved!!! WUHU!!!")
        } catch {
            print("We could not save the data...")
        }
    }
    
    func addMoney(name: String, amount: Double, context: NSManagedObjectContext) {
        let money = Money(context: context)
        money.id = UUID()
        money.date = Date()
        money.name = name
        money.amount = amount
        
        save(context: context)
    }
    
    func editMoney(money: Money, name: String, amount: Double, context: NSManagedObjectContext) {
        money.name = name
        money.amount = amount
        
        save(context: context)
    }
}
