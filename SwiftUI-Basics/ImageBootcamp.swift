//
//  ImageBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("tiger")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFit()
            .frame(width: 200, height: 200)
            //.clipped()
            //.cornerRadius(100)
            .clipShape(
            // Circle()
            // RoundedRectangle(cornerRadius: 15)
            // Ellipse()
            Circle()
            )
    }
}

#Preview {
    ImageBootcamp()
}
