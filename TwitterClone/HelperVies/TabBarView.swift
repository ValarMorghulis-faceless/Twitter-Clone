//
//  TabBarView.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case search = 1
    case messages = 2
    
}

struct TabBarView: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(alignment: .center, spacing: 3) {
            
            Button(action: {
                selectedTab = .home
                
            }, label: {
                TabBarButton(buttonText: "Home", imageName: "house.fill", isActive: selectedTab == .home)
            })
            .tint(selectedTab == .home ? .buttonColor :  Color(.secondaryLabel)  )
            
            Button(action: {
                selectedTab = .search
            }, label: {
                TabBarButton(buttonText: "search", imageName: "magnifyingglass", isActive: selectedTab == .search)
            })
            .tint(selectedTab == .search ? .buttonColor :  Color(.secondaryLabel)  )
            Button(action: {
                selectedTab = .messages
            }, label: {
                GeometryReader { geo in
                
                               
                
                                VStack(alignment: .center, spacing: 4) {
                                    Image(systemName: "dollarsign.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35, height: 35, alignment: .center)
                                        .padding(.bottom)
                
                
                                   
                                }
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                                }
            })
            .tint(selectedTab == .messages ? .buttonColor :  Color(.secondaryLabel)  )
            
        
        }
        
        .frame(height: 60)
        .background(Color.white)
        
        
    }
        
        
       
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.home))
    }
}
