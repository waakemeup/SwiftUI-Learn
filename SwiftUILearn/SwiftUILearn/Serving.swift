//
//  Serving.swift
//  SwiftUILearn
//
//  Created by Ruby on 2022/1/6.
//

import Foundation

struct Serving:Identifiable,Codable {
    var id:UUID
    let name:String
    let description:String
    let caffeine:Int
    let calories:Int
}
