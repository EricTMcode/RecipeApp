//
//  TapBar.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            RecipeListView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            RecipeListView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            RecipeListView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(.mint)
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
            .environmentObject(RecipeListViewModel())
    }
}
