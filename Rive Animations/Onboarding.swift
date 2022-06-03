//
//  Onboarding.swift
//  Rive Animations
//
//  Created by TheGIZzz on 1/6/2565 BE.
//

import SwiftUI
import RiveRuntime

struct Onboarding: View {
    
    let button = RiveViewModel(fileName: "button")
    var body: some View {
        
        ZStack {
            background
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Learn Design & Code")
                    .font(.custom("Poppins Bold", size: 60, relativeTo: .largeTitle))
                    .frame(width: 260, alignment: .leading)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .customFont(textStyle: .body)
                    .font(.headline)
                    .opacity(0.7)
                    .frame(width: .infinity, alignment: .leading)
                
                
                Spacer()
                
                button.view()
                    .frame(width: 236, height: 64)
                    .overlay(
                        Label("Start the course", systemImage: "arrow.forward")
                            .offset(x: 4, y: 4)
                            .font(.headline)
                    )
                
                    .onTapGesture {
                        button.play(animationName: "active")
                }
                
                Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .customFont(textStyle: .body)
                    .font(.headline)
                    .opacity(0.7)
            }
        }
        .padding(40)
        .padding(.top, 40)
    }

    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 100, y: 200)
        )
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
