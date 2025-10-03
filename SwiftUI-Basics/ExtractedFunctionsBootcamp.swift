//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor:Color = .pink
    var body: some View {
        ZStack {
            backgroundLayer
            contentLayer
        }
    }
    
    var backgroundLayer: some View {
        backgroundColor
            .edgesIgnoringSafeArea(.all)
    }
    
    var contentLayer: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .green
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
