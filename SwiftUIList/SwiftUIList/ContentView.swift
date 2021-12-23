//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Ruby on 2021/8/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*List{
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
            Text("Item 4")
        }*/
//        List{
//            ForEach(1...4,id:\.self){
//1.                index in
//                Text("Item \(index)")
//2.                Text("Item \($0)")
//                上述($0)表示闭包的第一个参数
//            }
//        }
        List(1...4,id:\.self){
            Text("Item \($0)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
