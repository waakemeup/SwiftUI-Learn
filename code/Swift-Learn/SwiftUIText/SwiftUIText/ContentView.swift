//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Ruby on 2021/8/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Stay Hungry,Stay Foolish!")
            .fontWeight(.black)
            .font(.system(.title,design: .rounded))
            .foregroundColor(.green)
            .multilineTextAlignment(.center)
            .padding()
//            .font(.custom("Helvetica", size: 25))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
