//
//  CustomizeView.swift
//  SwiftUILearn
//
//  Created by Ruby on 2021/12/23.
//

import SwiftUI

struct CustomizeView: View {
    let drink:Drink
    @EnvironmentObject var menu:Menu
    
    @State private var size = 0
    @State private var isDecaf = false
    @State private var extraShots = 0
    @State private var milk = ConfigurationOption.none
    @State private var syrup = ConfigurationOption.none
    
    
    
    
    let sizeOptions = ["Small","Medium","Large"]
    
    var caffeine:Int {
        100
    }
    
    var calories:Int {
        100
    }
    
    var body: some View {
        Form {
            Section("Basic Options"){
                Picker("Size",selection: $size){
                    ForEach(sizeOptions.indices){ index in
                        Text(sizeOptions[index])
                    }
                }
                .pickerStyle(.segmented)
                
                if drink.coffeeBased {
                    Stepper("Extra Shots:\(extraShots)",
                            value:$extraShots,in:0...8)
                }
                
                Toggle("Decaffeinated",isOn: $isDecaf)
            }
            
            Section("Customization") {
                Picker("Milk",selection: $milk){
                    ForEach(menu.milkOptions){ option in
                        Text(option.name)
                            .tag(option)
                    }
                }
            }
            
            if drink.coffeeBased {
                Picker("Sryup",selection: $syrup){
                    ForEach(menu.syrupOptions){ option in
                        Text(option.name)
                            .tag(option)
                    }
                }
            }
            
            Section("Estimates"){
                Text("**Caffeine:**\(caffeine)mg")
                Text("**Calories:**\(calories)")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(drink.name)
    }
}

struct CustomizeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeView(drink: Drink.example)
    }
}
