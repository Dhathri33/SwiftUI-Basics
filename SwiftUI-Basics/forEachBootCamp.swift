//
//  forEachBootCamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct forEachBootCamp: View {
    
    let data: [String] = ["hi", "hello", "world"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            VStack {
                ForEach(data.indices) { index in
                    Text("\(data[index]) : index:\(index)")
                }
            }
            
        }
    }
}

#Preview {
    forEachBootCamp()
}
