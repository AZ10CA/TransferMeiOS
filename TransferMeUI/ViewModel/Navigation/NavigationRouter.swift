//
//  Navigation.swift
//  TransferMeUI
//
//  Created by Alireza Zahedi on 2025-05-02.
//

import SwiftUI

class NavigationRouter: ObservableObject {
    @Published var currentRoute: AppRoute = .splash

    func go(to route: AppRoute) {
        currentRoute = route
    }
}
