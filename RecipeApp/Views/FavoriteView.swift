//
//  FavoriteView.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationStack {
            Text("You haven't saved any recipe to your favorites yet.")
                .padding()
                .navigationTitle("Favorites")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}