//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Ruby on 2021/8/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action:{
            print("Hello world tapped!")
        }){
            Text("Hello World")
            /*    .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.largeTitle) */
            /*    .foregroundColor(.purple)
                .font(.title)
                .padding()
                .border(Color.purple, width: 5)*/
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple,lineWidth: 5)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
