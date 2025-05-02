//
//  Logo.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-01.
//

import SwiftUI

struct Logo: View {
    let size: CGFloat;
    var body: some View {
        ZStack {
            let offset = size / 4
            Circle()
                .fill(Color.logoColorPrimary)
                .offset(x: -offset)
            
            Circle()
                .fill(Color.logoColorSecondary)
                .offset(x: offset)
        }
        .frame(width: self.size, height: self.size)
            
    }
}

#Preview {
    ZStack {
        Logo(size: 120)
    }
}
