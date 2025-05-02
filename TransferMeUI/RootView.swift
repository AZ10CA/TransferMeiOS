//
//  ContentView.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-01.
//

import SwiftUI


struct RootView: View {
    @StateObject private var router = NavigationRouter()
    @State private var showSplash = true

    var body: some View {
        ZStack {
            switch router.currentRoute {
            case .splash:
                if showSplash {
                    SplashScreen()
                        .environmentObject(router)
                        .transition(.opacity)
                } else {
                    EmptyView()
                }
            case .onboarding:
                EmptyView()
            }
        }
        .task {
            if router.currentRoute == .splash {
                try? await Task.sleep(nanoseconds: 3_000_000_000)
                withAnimation(.easeOut(duration: 0.5)) {
                    showSplash = false
                }
                try? await Task.sleep(nanoseconds: 500_000_000)
                router.go(to: .onboarding)
            }
        }
    }
}

#Preview {
    RootView()
}
