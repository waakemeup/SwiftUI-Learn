//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Ruby on 2021/8/5.
//

import SwiftUI

struct ContentView: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width:200,height: 200)
                .foregroundColor(circleColorChanged ? Color(.systemGray2):.red)
//                .animation(.default)
                .animation((.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)))
            
            Image(systemName: "heart.fill")
                .foregroundColor(heartColorChanged ? .red :.white)
                .font(.system(size:100))
                .animation((.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)))
                .scaleEffect(heartSizeChanged ? 1:0.5)
//                .animation(.default)
        }
//        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3))
        .onTapGesture {
//            withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)){
                self.circleColorChanged.toggle()
                self.heartColorChanged.toggle()
                self.heartSizeChanged.toggle()
            }
//            self.heartSizeChanged.toggle()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
