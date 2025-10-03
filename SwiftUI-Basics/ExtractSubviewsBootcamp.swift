//
//  ExtractSubviewsBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    var body: some View {
        ZStack {
            Color(.systemCyan).ignoresSafeArea(.all)
            views
        }
    }
    
    var views: some View {
        HStack {
            MyView(title: "Apples", count: 10, color: .red)
            MyView(title: "Oranges", count: 2, color: .orange)
            MyView(title: "Bananas", count: 15, color: .yellow)
        }
    }
}

struct MyView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding(10)
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}
