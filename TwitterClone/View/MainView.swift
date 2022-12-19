//
//  MainView.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var appState: AppStateManager
    
    
    func correctViewForState() -> some View {
        switch appState.selectedTab {
        case .home:
            let view = FeedView()
            return AnyView(view)
        case .search:
            let view = SearchView()
            return AnyView(view)
        case .messages:
            let view = Text("messages")

            return AnyView(view)
            
        }
    }

    
    var body: some View {
          NavigationView {
            ZStack {
                Color(.systemGray6)
                    .opacity(0.35)
                    .edgesIgnoringSafeArea(.vertical)
                
               
                
                VStack {
                   
                    correctViewForState()
                    
                    HStack() {
                        
                        TabBarButtonView(type: .home, text: .home)
                        
                        TabBarButtonView(type: .search, text: .search)
                            
                        
                        TabBarButtonView(type: .messages, text: .messages)

                    }
                    .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color.gray.opacity(0.25)), alignment: .top)
                    .frame(height: 70)
                    .background(Color.white)
                .padding(.bottom, -20)
                    
                   
                }
                

            }
            .modifier(HideNavigationView())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AppStateManager())
    }
}
