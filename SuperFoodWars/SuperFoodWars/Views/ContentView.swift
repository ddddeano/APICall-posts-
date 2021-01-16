//
//  ContentView.swift
//  SuperFoodWars
//
//  Created by Daniel Watson on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .onAppear {
            Api().getPosts { (posts) in
                self.posts = posts
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
