//
//  SearchBar.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding  var searchText: String
    
    @Binding var isEditing: Bool
    var body: some View {
        HStack {
            TextField("Search...", text: $searchText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.gray).opacity(0.5))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size:20))
                            .foregroundColor(Color(.blue))
                            .padding(.leading, 4)
                        
                        Spacer()
                    }
            )
            .padding(.horizontal, 10)
            .onTapGesture {
                self.isEditing = true
            }
            .animation(.easeIn(duration: 0.25))
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.searchText = ""
                    self.endEditing(true)
                }, label: {
                    Text("Cancel")
                        .foregroundColor(Color(.blue))
                })
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.easeIn(duration: 0.25))
            }
        }
        Spacer().frame(height: 14)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("ASDAS"), isEditing: .constant(false))
    }
}
