//
//  SearchView.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    @State var isEditing: Bool = false
    
    var body: some View {
        NavigationView {
           
            ScrollView(showsIndicators: false) {
                SearchBar(searchText: $searchText, isEditing: $isEditing)
                    .padding()
                
                VStack {
                    ForEach(0..<19, id: \.self) {_ in
                      Text("ADD Users here..")
                    }
                }
            }
            
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
