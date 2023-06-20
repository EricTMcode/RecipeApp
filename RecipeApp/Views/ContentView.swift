//
//  TapBar.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct ContentView: View {
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
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "bookmark")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(.GreenMedium)
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeListViewModel())
    }
}
