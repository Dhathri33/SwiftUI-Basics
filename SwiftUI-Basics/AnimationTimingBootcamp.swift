//
//  AnimationTimingBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Tap me") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.blue)
//                .animation(
//                    Animation.linear(duration: 2)
//                )
                .animation(
                    Animation.easeInOut(duration: timing)
                )
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.blue)
                .animation(Animation.easeIn(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.blue)
                .animation(Animation.easeOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.blue)
                .animation(Animation.spring(
                    response: 10.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                ))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
