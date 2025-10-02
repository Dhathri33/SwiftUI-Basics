//
//  IconsBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
           // .font(.largeTitle)
            .font(.system(size: 200))
            .aspectRatio(contentMode: .fit)
            //.foregroundColor(.red)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
