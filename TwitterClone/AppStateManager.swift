//
//  AppStateManager.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import Foundation


class AppStateManager: ObservableObject {
    @Published var selectedTab : TabBarButtonType = .home
    @Published var selectedText : TabBarButtonText = .home
}
