//
//  Onboarding.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-02.
//

import SwiftUI

struct Onboarding: View {
    @State private var showWelcomeScreen: Bool = true;
    
    var body: some View {
        ZStack {
            if showWelcomeScreen {
                welcomeScreen
                    .transition(.move(edge: .leading))
            } else {
                Text("Main Onboarding Content") // Replace with actual onboarding flow
                    .transition(.move(edge: .trailing))
            }
        }
        .animation(.easeInOut, value: showWelcomeScreen)
    }

    private var welcomeScreen: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                Spacer()
                Logo(size: 100)
                    .padding(.bottom, 25)
                
                Text("Welcome to")
                    .font(.sfDisplay(47, weight: .bold))
                
                Text("TransferMe.")
                    .foregroundStyle(.accent)
                    .font(.sfDisplay(40, weight: .bold))
                    .padding(.bottom, 30)
                
                Text("Your Best Money Transfer Partner.")
                    .font(.sfDisplay(16, weight: .regular))
                    .foregroundStyle(.gray)
                
                Spacer()
                
                PrimaryButton(title: "Get Started") {
                    self.showWelcomeScreen = false
                }
                
                Spacer()
            }
        }
    }

}

#Preview {
    Onboarding()
}
