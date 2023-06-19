//
//  RecipeRating.swift
//  RecipeApp
//
//  Created by Eric on 18/06/2023.
//

import SwiftUI

struct RecipeRating: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRating_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRating(recipe: Recipe.example)
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
