//
//  SwiftUICircle.swift
//  SwiftUIShape
//
//  Created by Ruby on 2021/8/5.
//

import SwiftUI

struct SwiftUICircle: View {
    var body: some View {
        Path(){ path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: true)
        }
        .fill(Color.green)
    }
}

struct SwiftUICircle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICircle()
    }
}
