//
//  CoreDataManager.swift
//  todo
//
//  Created by Ruby on 2021/11/10.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer:NSPersistentContainer
    static let shared:CoreDataManager = CoreDataManager()
    
    private init(){
        persistentContainer = NSPersistentContainer(name: "SimpleTodoModel")
        persistentContainer.loadPersistentStores{
            description,
            error in
            if let error = error {
                fatalError("Unable to initialize core data \(error)")
            }
            
        }
    }
}
