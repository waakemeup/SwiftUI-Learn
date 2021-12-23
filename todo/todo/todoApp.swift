//
//  todoApp.swift
//  todo
//
//  Created by Ruby on 2021/11/10.
//

import SwiftUI

@main
struct todoApp: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
