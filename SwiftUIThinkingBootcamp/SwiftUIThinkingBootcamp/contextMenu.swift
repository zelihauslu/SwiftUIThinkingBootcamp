//
//  contextMenu.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 22.05.2022.
//

import SwiftUI

struct contextMenu: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ArticleView: View {
    
    var body: some View {
        Text("Click here for menu")
            .font(.largeTitle)
            .foregroundColor(.red)
            .contextMenu {
                Button(action: {
                    // Action
                }) {
                    Text("Delete")
                    Image(systemName: "trash")
                }
                Button(action: {
                    // action
                }) {
                    Text("Add")
                    Image(systemName: "plus")
                }
                Button(action: {
                    // Action
                }) {
                    Text("Share")
                    Image(systemName: "square.and.arrow.up")
                }
                Button(action: {
                    // action
                }) {
                    Text("Favorite")
                    Image(systemName: "heart.fill")
                }
        }
    }
}

struct contextMenu_Previews: PreviewProvider {
    static var previews: some View {
        contextMenu()
    }
}
