//
//  CombineGesture.swift
//  Gesture
//
//  Created by Ruby on 2022/1/15.
//

import SwiftUI

struct CombineGesture: View {
//    @GestureState private var isPressed = false
    @GestureState private var dragState = DragState.inactive
    @State private var position = CGSize.zero
    
    
    var body: some View {
        Image(systemName:"star.circle.fill")
            .font(.system(size: 100))
            .opacity(dragState.isPressing ? 0.5 : 1.0)
            .offset(x:position.width + dragState.translation.width,y: position.height + dragState.translation.height)
            .animation(.easeInOut)
            .foregroundColor(.green)
            .gesture(
                LongPressGesture(minimumDuration:1.0)
                    .sequenced(before: DragGesture())
                    .updating($dragState,body:{(value,state,transaction) in
                        switch value {
                        case .first(true):
                            state = .pressing
                        case .second(true,let drag):
                            state = .dragging(translation: drag?.translation ?? .zero)
                        default:
                            break
                        }
                    })
                    .onEnded({ (value) in
                        guard case .second(true,let drag?) = value else {
                            return
                        }
                        self.position.width += drag.translation.width
                        self.position.height += drag.translation.height
                    })
            )
    }
}

struct CombineGesture_Previews: PreviewProvider {
    static var previews: some View {
        CombineGesture()
    }
}


enum DragState {
    case inactive
    case pressing
    case dragging(translation:CGSize)
    
    var translation:CGSize {
        switch self {
        case .inactive,.pressing:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    
    var isPressing:Bool {
        switch self {
        case .pressing,.dragging:
            return true
        case .inactive:
            return false
        }
    }
}
