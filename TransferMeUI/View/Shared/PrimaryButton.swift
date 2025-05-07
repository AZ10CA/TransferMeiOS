//
//  PrimaryButton.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-07.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String;
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .padding(.vertical, 20)
            .padding(.horizontal, 55)
            .background(Color.accentColor)
            .foregroundStyle(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .cornerRadius(25)
            .shadow(color: Color.accentColor.opacity(0.8), radius: 60, x: 0, y: 4)
    }
}

#Preview {
    PrimaryButton(title: "Button", action: {})
}
