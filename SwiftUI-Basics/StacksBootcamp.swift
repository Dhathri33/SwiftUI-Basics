//
//  StacksBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
     
        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500, alignment: .center)
            VStack( alignment: .center, content:  {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                }
            })
        }
    }
}

#Preview {
    StacksBootcamp()
}
