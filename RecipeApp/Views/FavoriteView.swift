//
//  FavoriteView.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var vm: RecipeListViewModel
    var body: some View {
        NavigationStack {
            //            Text("You haven't saved any recipe to your favorites yet.")
            //                .padding()
            //
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(vm.recipes) { recipe in
                        if recipe.bookmark {
                            RecipeCard(recipe: recipe)
                        }
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
            }
            .navigationTitle("Favorites")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .environmentObject(RecipeListViewModel())
    }
}
