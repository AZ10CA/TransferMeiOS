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
                        .font(.custom("SFProDisplay-Bold", size: 55))
                        .bold()
                        .padding(.bottom, 8)
                        
                    
                    Text("Your Best Money Transfer Partner.")
                        .font(.custom("SFProDisplay-Regular", size: 14))
                }
                .foregroundStyle(Color.textColorPrimary)
                
                Spacer()
                
                let textColor1 = colorScheme == .light ? Color.gray : Color.white
                
                let textColor2 = colorScheme == .light ? Color.accentColor : Color.white
                
                (Text("Secured by ")
                    .font(.custom("SFProDisplay-Regular", size: 16))
                    .foregroundStyle(textColor1)
                +
                    Text("TransferMe.")
                    .font(.custom("SFProDisplay-Regular", size: 16))
                    .foregroundStyle(textColor2))
                
            }
        }
    }
}

#Preview {
    SplashScreen()
}
