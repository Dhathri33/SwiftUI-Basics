//
//  Transition Bootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct Transition_Bootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack {
            Button("BUTTON"){
                showView.toggle()
            }
            Spacer()
        }
        
        if showView {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.asymmetric(
                    insertion: .move(edge: .bottom),
                    removal: AnyTransition.opacity.animation(.easeOut)
                        ))
                    .animation(.easeInOut)
        }
    }
}

#Preview {
    Transition_Bootcamp()
}
