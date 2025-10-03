//
//  LoginScreen.swift
//  SwiftUI-Basics
//
//  Created by Dhathri Bathini on 10/3/25.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text("Login Screen")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $email)
                .padding(10)
                .padding(.horizontal, 30)
                .cornerRadius(8)
            
            TextField("Password", text: $password)
                .padding(10)
                .padding(.horizontal, 30)
                .cornerRadius(8)
            
            Button(action: {
            }
       
                ) {
            }
                Text("Login")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue) }
    }
}

#Preview {
    LoginScreen()
}
