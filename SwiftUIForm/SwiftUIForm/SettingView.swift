//
//  SettingView.swift
//  SwiftUIForm
//
//  Created by Ruby on 2022/1/9.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var settingStore:SettingStore
//    private var displayOrders = ["Alphabetical","Show Favorite First","Show Check-in First"]
    
    @State private var selectedOrder = DisplayOrderType.alphabetical
    @State private var showCheckInOnly = false
    @State private var maxPriceLevel = 5
    
    var body: some View {
        NavigationView {
            Form {
                Section(header:Text("SORT PREFERENCE")){
                    Picker(selection:$selectedOrder,label: Text("Display order")){
                        ForEach(DisplayOrderType.allCases,id:\.self){
                            orderType in
                            Text(orderType.text)
                        }
                    }
                }
                Section(header:Text("FILTER PREFERENCE")){
                    Toggle(isOn:$showCheckInOnly){
                        Text("Show Check-in Only")
                    }
                    
                    Stepper(onIncrement: {
                        self.maxPriceLevel += 1
                        if self.maxPriceLevel > 5 {
                            self.maxPriceLevel = 5
                        }
                    }, onDecrement: {
                        self.maxPriceLevel -= 1
                        if self.maxPriceLevel < 1 {
                            self.maxPriceLevel = 1
                        }
                    }){
                        Text("Show \(String(repeating:"$",count:maxPriceLevel)) or below")
                    }
                }
            }
            .navigationBarTitle("Setting")
            .navigationBarItems(leading:
                Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
            })
                
            , trailing: Button(action: {
                self.settingStore.showCheckInOnly = self.showCheckInOnly
                self.settingStore.displayOrder = self.selectedOrder
                self.settingStore.maxPriceLevel = self.maxPriceLevel
                self.presentationMode.wrappedValue.dismiss()
            }, label:{
                Text("Save")
                    .foregroundColor(.black)
                })
            )
            .onAppear {
                self.selectedOrder = self.settingStore.displayOrder
                self.showCheckInOnly = self.settingStore.showCheckInOnly
                self.maxPriceLevel = self.settingStore.maxPriceLevel
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(settingStore: SettingStore())
    }
}

