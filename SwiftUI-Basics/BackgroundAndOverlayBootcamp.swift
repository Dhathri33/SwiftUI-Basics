//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            //.frame(width: 200, height: 200)
//            .background(
//                //Color.red
//                /*LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )*/
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 300, height: 300, alignment: .center)
//            )
//            .background(
//            Circle()
//            .stroke(Color.black, lineWidth: 3)
//            .frame(width: 300, height: 300)
//            )
//        Circle()
//            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//            .frame(width: 200, height: 200)
//            .overlay(
//                Text("Hello, World!")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .frame(width:300, height: 300)
//            .background(Color.orange)
            
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(.purple)
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10)
            )
            .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 30, height: 30) // make it smaller
                    .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundColor(.white)
                    )
                    .frame(width: 10, height: 10)
                    .shadow(color: .blue, radius: 10),
                alignment: .bottomTrailing
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
