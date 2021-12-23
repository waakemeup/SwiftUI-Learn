//
//  MenuSection.swift
//  SwiftUILearn
//
//  Created by Ruby on 2021/12/23.
//

import Foundation

struct MenuSection:Identifiable,Codable {
    let id:UUID
    let name:String
    let drinks:[Drink]
    
}
