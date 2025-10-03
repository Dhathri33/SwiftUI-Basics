//
//  AnimationBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
               isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(x: isAnimated ? -100: 0 , y: isAnimated ? 300 : 0)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
