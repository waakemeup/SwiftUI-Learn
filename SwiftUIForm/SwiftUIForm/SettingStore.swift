//
//  SettingStore.swift
//  SwiftUIForm
//
//  Created by Ruby on 2022/1/10.
//

import Foundation
import Combine

enum DisplayOrderType:Int,CaseIterable {
    case alphabetical = 0
    case favoriteFirst = 1
    case checkInFirst = 2
    
    init(type:Int){
        switch type {
        case 0:self = .alphabetical
        case 1:self = .favoriteFirst
        case 2:self = .checkInFirst
        default:self = .alphabetical
        }
    }
    
    var text:String  {
        switch self {
        case .alphabetical: return "Alphabetical"
        case .favoriteFirst: return "Show Favorite First"
        case .checkInFirst: return "Show Check-in First"
        }
    }
}

final class SettingStore:ObservableObject {
    init(){
        UserDefaults.standard.register(defaults: [
            "view.preferences.showCheckInOnly":false,
            "view.preferences.displayOrder":0,
            "view.preferences.maxPriceLevel":5
        ])
    }
    
    @Published var showCheckInOnly:Bool = UserDefaults.standard.bool(forKey: "view.preferences.showCheckInOnly"){
        didSet{
            UserDefaults.standard.set(showCheckInOnly,forKey: "view.preferences.showCheckInOnly")
        }
    }
    
    @Published var displayOrder:DisplayOrderType = DisplayOrderType(type: UserDefaults.standard.integer(forKey: "view.preferences.displayOrder")){
        didSet{
            UserDefaults.standard.set(displayOrder.rawValue,forKey: "view.preferences.displayOrder")
        }
    }
    
    @Published var maxPriceLevel:Int = UserDefaults.standard.integer(forKey: "view.preferences.maxPriceLevel"){
        didSet{
            UserDefaults.standard.set(maxPriceLevel,forKey: "view.preferences.maxPriceLevel")
        }
    }
}

