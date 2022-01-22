//
//  LoanStore.swift
//  SwiftUIKivaLoan
//
//  Created by Ruby on 2022/1/22.
//

import Foundation
import UIKit

class LoanStore:Decodable,ObservableObject {
    @Published var loans:[Loan] = []
    
    enum CodingKeys:CodingKey {
        case loans
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy:CodingKeys.self)
        loans = try values.decode([Loan].self,forKey: .loans)
    }
    
    init(){
        
    }
}

