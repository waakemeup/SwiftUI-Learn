//
//  CustomizeView.swift
//  SwiftUILearn
//
//  Created by Ruby on 2021/12/23.
//

import SwiftUI

struct CustomizeView: View {
    let drink:Drink
    @State private var size = 0
    @State private var isDecaf = false
    
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
                
                Toggle("Decaffeinated",isOn: $isDecaf)
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
