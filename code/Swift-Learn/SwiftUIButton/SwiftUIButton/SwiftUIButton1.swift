//
//  SwiftUIButton1.swift
//  SwiftUIButton
//
//  Created by Ruby on 2021/8/4.
//

import SwiftUI

struct SwiftUIButton1: View {
    var body: some View {
        VStack {
            Button(action:{
                print("Delete Button tapped!")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action:{
                print("Delete Button tapped!")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action:{
                print("Delete Button tapped!")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
        }
        
    }
}

struct GradientBackgroundStyle:ButtonStyle {
    func makeBody(configuration:Self.Configuration)->some View {
        configuration.label
            .frame(minWidth:0,maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal,20)
            .shadow(color:.gray,radius: 20.0,x:20,y:10)
            .scaleEffect(configuration.isPressed ? 0.9: 1)
    }
}

struct SwiftUIButton1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton1()
    }
}
