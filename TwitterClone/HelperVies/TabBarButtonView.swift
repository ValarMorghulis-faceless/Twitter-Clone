//
//  TabBarButtonView.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

enum TabBarButtonType: String {
    case home = "house.fill"
    case search = "magnifyingglass"
    case messages = "message"
}

enum TabBarButtonText: String {
    case home = "Home"
    case search = "search"
    case messages = "messages"
   
}


struct TabBarButtonView: View {
    var type : TabBarButtonType
    var text : TabBarButtonText
    @EnvironmentObject var appState: AppStateManager
    var body: some View {
        Button(action: {
            appState.selectedTab = type
        }, label: {
            TabBarButton(buttonText: text.rawValue, imageName: type.rawValue, isActive: appState.selectedTab == type)
                .tint(appState.selectedTab == type ? .buttonColor : Color.gray.opacity(0.5) )
        })
        
    }

}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .home, text: .home)
            .environmentObject(AppStateManager())
            
    }
}
