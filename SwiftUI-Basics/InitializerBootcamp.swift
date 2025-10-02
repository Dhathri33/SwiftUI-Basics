//
//  InitializerBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/2/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .orange {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
        else {
            self.backgroundColor = .red
            self.title = "Apples"
        }
        
    }
    
    enum Fruit {
        case orange
        case apple
    }
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 10, fruit: .apple)
        InitializerBootcamp(count: 20, fruit: .orange)
    }
}
