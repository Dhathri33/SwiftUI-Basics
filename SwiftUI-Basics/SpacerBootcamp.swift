//
//  SpacerBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                   // .background(Color.orange)
                Image(systemName: "gear")
            }
            .font(.title)
           // .background(Color.yellow)
            .padding(.horizontal)
           // .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
               // .background(Color.orange)
        }
       // .background(Color.orange)
    }
}

#Preview {
    SpacerBootcamp()
}
