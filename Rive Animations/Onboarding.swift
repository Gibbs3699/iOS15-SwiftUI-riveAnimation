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
        }
        
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
