//
//  Onboarding.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-02.
//

import SwiftUI


struct OnboardinWelcomeScreen: View {
    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
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

struct Onboarding: View {
    let onboardingPageCount = 3;
    
    @State private var showWelcomeScreen: Bool = true;
    
    var body: some View {
        ZStack {
            if showWelcomeScreen {
                OnboardinWelcomeScreen(showWelcomeScreen: $showWelcomeScreen)
                    .transition(.move(edge: .leading))
            } else {
                OnboardingPagerView()
                    .transition(.move(edge:. trailing))
            }
        }
        .animation(.easeInOut, value: showWelcomeScreen)
    }
}

struct OnboardingPagerView: View {
    @State private var currentPage = 0

    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(1..<8) { index in
                OnboardingPage(number: index)
                    .tag(index)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


struct OnboardingPage: View {
    let number: Int
    var title: String { "onboarding_title_\(number)" }
    var description: String { "onboarding_description_\(number)" };
    var imagePath: String { "onboarding/\(number)" }
    
    var body: some View {
        VStack {
            Image(self.imagePath)
            
            Text(LocalizedStringKey(self.title))
                .font(.title)
            
            Text(LocalizedStringKey(self.description))
        }
    }
}

#Preview {
    Onboarding()
}
