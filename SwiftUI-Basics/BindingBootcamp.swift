//
//  BindingBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State private var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
        
            ExtractedView(backgroundColor: $backgroundColor)
            
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ExtractedView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
        }, label: {
            Text("Button")
                .font(.headline)
                .padding(10)
                .padding(.horizontal, 20)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
        })
    }
}
