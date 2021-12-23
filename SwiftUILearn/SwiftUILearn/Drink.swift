//
//  Drink.swift
//  SwiftUILearn
//
//  Created by Ruby on 2021/12/23.
//

import Foundation

struct Drink: Identifiable,Codable {
    let id:UUID
    let name:String
    let caffefine:[Int]
    let coffeeBased: Bool
    let servedWithMilk: Bool
    let baseCalories: Int
    
    var image:String {
        name.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    
    static let example = Drink(id: UUID(), name: "Example Drink",caffefine: [60,120,200],coffeeBased: true,servedWithMilk: true,baseCalories: 100)
}
