//
//  ContentView.swift
//  Gesture
//
//  Created by Ruby on 2022/1/15.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    @GestureState private var longPressTap = false
    
    var body: some View {
        VStack {
//            Image(systemName: "star.circle.fill")
//                .font(.system(size: 200))
//                .scaleEffect(isPressed ? 0.5 : 1.0)
//                .animation(.easeInOut)
//                .foregroundColor(.green)
//                .gesture(
//                    LongPressGesture(minimumDuration: 1.0)
//                        .onEnded({ _ in
//                            self.isPressed.toggle()
//                        })
//            )
//
//
//            Image(systemName: "star.circle.fill")
//                .font(.system(size: 200))
//                .scaleEffect(isPressed ? 0.5 : 1.0)
//                .animation(.easeInOut)
//                .foregroundColor(.green)
//                .gesture(TapGesture()
//                    .onEnded({
//                    self.isPressed.toggle()
//                    })
//                )
            
            Image(systemName: "star.circle.fill")
                .font(.system(size: 200))
                .opacity(longPressTap ? 0.4 : 1.0)
                .scaleEffect(isPressed ? 0.5 : 1.0)
                .animation(.easeInOut)
                .foregroundColor(.green)
                .gesture(
                    LongPressGesture(minimumDuration:1.0)
                        .updating($longPressTap,body:{(currentState,state,transaction) in state = currentState})
                        .onEnded({_ in
                            self.isPressed.toggle()
                        })
                )
        }
        
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
