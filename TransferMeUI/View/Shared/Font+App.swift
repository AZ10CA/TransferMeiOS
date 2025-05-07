//
//  Font+App.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-07.
//


import SwiftUI

extension Font {
    static func sfDisplay(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        switch weight {
        case .bold:
            return .custom("SFProDisplay-Bold", size: size)
        case .medium:
            return .custom("SFProDisplay-Medium", size: size)
        default:
            return .custom("SFProDisplay-Regular", size: size)
        }
    }
}
