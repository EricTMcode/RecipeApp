//
//  Recipe.swift
//  RecipeApp
//
//  Created by Eric on 17/06/2023.
//

import Foundation

struct Recipe: Codable, Identifiable {
    var id: Int
    var title: String
    var headline: String
    var bookmark: Bool
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
    
    static let allRecipes: [Recipe] = Bundle.main.decode("recipes.json")
    static let example = allRecipes[0]
    
}
