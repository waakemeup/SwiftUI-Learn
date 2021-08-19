//
//  SwiftUIButtonWithDraw.swift
//  SwiftUIShape
//
//  Created by Ruby on 2021/8/5.
//

import SwiftUI

struct SwiftUIButtonWithDraw: View {
    var body: some View {
        Button(action:{
            
        }){
            Text("Test")
                .font(.system(.title,design: .rounded))
                .bold()
                .foregroundColor(.white)
                .frame(width:250,height:50)
                .background(Demo().fill(Color.red))
        }
    }
}

struct Demo:Shape {
    func path(in rect:CGRect)->Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width*0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}

struct SwiftUIButtonWithDraw_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButtonWithDraw()
    }
}
