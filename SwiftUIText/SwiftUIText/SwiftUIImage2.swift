//
//  SwiftUIImage2.swift
//  SwiftUIText
//
//  Created by Ruby on 2021/8/3.
//

import SwiftUI

struct SwiftUIImage2: View {
    var body: some View {
        Image("ai")
            .resizable()
//            .edgesIgnoringSafeArea(.all)    //忽略安全区
//            .scaledToFit()  //保持长宽比
            .aspectRatio(contentMode: .fill) //.fit和上面相同效果
            .frame(width:300,height: 300)
            .clipShape(Circle())
            .opacity(0.9)
            .overlay(Image(systemName: "heart.fill")
                    .font(.system(size:50))
                    .foregroundColor(.black)
                    .opacity(0.5)
            )
            
    }
}

struct SwiftUIImage2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage2()
    }
}
