//
//  SignInView.swift
//  Rive Animations
//
//  Created by TheGIZzz on 4/6/2565 BE.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack(spacing: 24) {
            
            Text("Sign In")
                .customFont(.largeTitle)
                
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .customFont(.headline)
            
            Divider()
            
            Text("Sign up with Email, Apple or Google")
                .customFont(.subheadline)
                .foregroundColor(.secondary)
            
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
        .padding(40)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(
            .linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1) ], startPoint: .topLeading, endPoint: .bottomTrailing)
        ))
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
