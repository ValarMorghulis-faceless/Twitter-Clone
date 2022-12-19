//
//  FeedView.swift
//  TwitterClone
//
//  Created by Giorgi Samkharadze on 19.12.22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0..<100, id: \.self) { _ in
                        TweetCell()
                    }
                }
                .padding()
                
            }
            Button(action: {
                
            }, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.blue))
            .foregroundColor(Color(.white))
            .clipShape(Circle())
            .padding()
        
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
