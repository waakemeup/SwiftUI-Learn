//
//  FileManager-DocumentDirectory.swift
//  SwiftUILearn
//
//  Created by Ruby on 2022/1/6.
//

import Foundation

extension FileManager {
    static var documentsDirectory:URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
