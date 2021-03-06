//
//  ContentView.swift
//  SwiftUIState
//
//  Created by Ruby on 2021/8/4.
//

import SwiftUI

struct ContentView: View {
    /*@State private var isPlaying = false
    var body: some View {
        Button(action:{
            self.isPlaying.toggle()
        }){
            Image(systemName:isPlaying ? "stop.circle.fill":"play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }*/
    @State private var counter = 1
    
    var body : some View {
        VStack {
            CounterButton(counter: $counter, color: .blue)
            CounterButton(counter: $counter, color: .green)
            CounterButton(counter: $counter, color: .red)
        }
    }
}

struct CounterButton:View {
    @Binding var counter : Int
    var color : Color
    
    var body:some View {
        Button(action: {
            self.counter+=1
        }){
            Circle()
                .frame(width:200,height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size:100,weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
