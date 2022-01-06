//
//  ConfigurationOption.swift
//  SwiftUILearn
//
//  Created by Ruby on 2022/1/6.
//

import Foundation

struct ConfigurationOption:Identifiable,Codable,Hashable {
    let id:UUID
    let name:String
    let calories:Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
    
}
