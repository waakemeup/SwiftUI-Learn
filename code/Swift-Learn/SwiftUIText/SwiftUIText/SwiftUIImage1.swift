//
//  SwiftUIImage1.swift
//  SwiftUIText
//
//  Created by Ruby on 2021/8/3.
//

import SwiftUI

struct SwiftUIImage1: View {
    var body: some View {
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 200))
            .foregroundColor(.blue)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10, x: 0.0, y: 10)
    }
}

struct SwiftUIImage1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage1()
    }
}
