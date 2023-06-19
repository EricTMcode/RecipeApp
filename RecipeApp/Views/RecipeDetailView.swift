//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.example)
    }
}
