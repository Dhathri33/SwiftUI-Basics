//
//  TernaryBootcamp.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE!!!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 20 : 0)
                .fill(isStartingState ? Color.red : Color.green)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? 100 : 200
                )
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
