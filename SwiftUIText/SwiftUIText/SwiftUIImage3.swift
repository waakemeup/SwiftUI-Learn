//
//  SwiftUIImage3.swift
//  SwiftUIText
//
//  Created by Ruby on 2021/8/3.
//

import SwiftUI

struct SwiftUIImage3: View {
    var body: some View {
        Image("ai")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                /*Rectangle()
                    .foregroundColor(.black)
                    .opacity(0.4)*/
                Color.black
                    .opacity(0.4)
                    .overlay(
                        Text("My Wife")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width:200)
                    )
            )
    }
}

struct SwiftUIImage3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage3()
    }
}
