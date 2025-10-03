//
//  ConditionalBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Is Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Button ("Circle Button: \(showCircle.description)"){
                showCircle.toggle()
            }
            Button ("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            if showCircle {
                Circle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.green)
                    .frame(width: 200, height: 50)
            }
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
