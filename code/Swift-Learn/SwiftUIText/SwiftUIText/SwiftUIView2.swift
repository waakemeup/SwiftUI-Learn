//
//  SwiftUIView2.swift
//  SwiftUIText
//
//  Created by Ruby on 2021/8/3.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        Text("Then a mason came forth and said, \"Speak to us of Houses.\"And he answered and Build of your imaginings a bower in the wilderness ere you build a house within the city For even as you have home-comings in your twilight, so has the wanderer in you, the ever distant and Your house is your larger body.")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .truncationMode(.head)
            .padding(.horizontal)
            .rotation3DEffect(
                .degrees(60),
                axis: (x:1,y:0,z:0)
            )
            .shadow(color: .gray, radius: 2, x: 0, y: 15)
//            .rotationEffect(.degrees(45),anchor: UnitPoint(x: 0, y: 0))   2D
        
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
