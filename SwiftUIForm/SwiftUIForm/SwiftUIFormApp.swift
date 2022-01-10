//
//  SwiftUIFormApp.swift
//  SwiftUIForm
//
//  Created by Ruby on 2022/1/9.
//

import SwiftUI

@main
struct SwiftUIFormApp: App {
    var settingStore=SettingStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settingStore)
        }
    }
}
