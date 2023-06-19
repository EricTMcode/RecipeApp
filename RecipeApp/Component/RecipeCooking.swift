//
//  RecipeCooking.swift
//  RecipeApp
//
//  Created by Eric on 18/06/2023.
//

import SwiftUI

struct RecipeCooking: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Cooking(image: "person.2", text: "Serves: \(recipe.serves)")
            Cooking(image: "clock", text: "Prep: \(recipe.preparation)")
            Cooking(image: "flame", text: "Cooking: \(recipe.cooking)")
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct Cooking: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Image(systemName: image)
            Text(text)
        }
    }
}

struct RecipeCooking_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCooking(recipe: Recipe.example)
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
