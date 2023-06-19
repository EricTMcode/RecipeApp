//
//  RecipeCard.swift
//  RecipeApp
//
//  Created by Eric on 18/06/2023.
//

import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            RecipeImage(recipe: recipe)
            
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(.GreenMedium)
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                RecipeRating(recipe: recipe)
                RecipeCooking(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .BlackTransparentLight, radius: 8, x: 0, y: 0)
    }
}

struct RecipeImage: View {
    @EnvironmentObject var vm: RecipeListViewModel
    var recipe: Recipe
    
    var body: some View {
        Image(recipe.image)
            .resizable()
            .scaledToFit()
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        Button {
                            vm.updateBookmark(forId: recipe.id)
                        } label: {
                            Image(systemName: recipe.bookmark ? "bookmark.fill" : "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
    //                            .imageScale(.small)
                                .shadow(color: .BlackTransparentLight, radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                        }
                        Spacer()
                    }
                }
            )
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
