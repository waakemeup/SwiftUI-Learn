//
//  ContentView.swift
//  SwiftUIScroll
//
//  Created by Ruby on 2021/8/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false) {
            HStack {
                VStack(alignment: .leading){
                    Text("Monday,Aug 20".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.black)
                }
                Spacer()
            }
            .padding([.top,.horizontal])
/*            HStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                    .frame(width: 300)
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    .frame(width: 300)
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    .frame(width: 300)
                CardView(image: "natural-language-api", category: "iOS", heading: "what's new in Natural Language API", author: "Sai Kambampati")
                    .frame(width: 300)
            }           */
            VStack {
                HStack {
                    Group {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                        .frame(width: 300)
            
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        .frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        .frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading: "what's new in Natural Language API", author: "Sai Kambampati")
                        .frame(width: 300)
                    }
                    .frame(width:300)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
