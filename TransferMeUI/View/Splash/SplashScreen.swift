//
//  SplashScreen.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-01.
//

import SwiftUI

struct SplashScreen: View {
    @Environment(\.colorScheme) var colorScheme;
    var body: some View {
        ZStack {
            let backgroundColor = colorScheme == .light ? .white : Color.accentColor
            
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                
                
                Logo(size: 110)
                    .padding(.bottom, 32)
                
                Group {
                    Text("TransferMe")
                        .font(.sfDisplay(55, weight: .bold))
                        .padding(.bottom, 8)
                        
                    
                    Text("Your Best Money Transfer Partner.")
                        .font(.sfDisplay(14, weight: .regular))
                }
                .foregroundStyle(Color.textColorPrimary)
                
                Spacer()
                
                let textColor1 = colorScheme == .light ? Color.gray : Color.white
                
                let textColor2 = colorScheme == .light ? Color.accentColor : Color.white
                
                (Text("Secured by ")
                    .font(.sfDisplay(16, weight: .regular))
                    .foregroundStyle(textColor1)
                +
                    Text("TransferMe.")
                    .font(.sfDisplay(16, weight: .regular))
                    .foregroundStyle(textColor2))
                
            }
        }
    }
}

#Preview {
    SplashScreen()
}
