//
//  PaddingAndSpacer.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World!")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge")
            
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        ).padding()
    }
}

#Preview {
    PaddingAndSpacer()
}
