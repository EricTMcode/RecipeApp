//
//  RecipeListViewModel.swift
//  RecipeApp
//
//  Created by Eric on 17/06/2023.
//

import Foundation

class RecipeListViewModel: ObservableObject {
    
    @Published var recipes: [Recipe] = []
    
    init() {
        getRecipes()
    }
    
    func getRecipes() {
        let url = Bundle.main.url(forResource: "recipes", withExtension: "json")!
        
        do {
            let data = try Data(contentsOf: url)
            let recipes = try JSONDecoder().decode([Recipe].self, from: data)
            self.recipes = recipes
        } catch {
            print("Couldn't parse local data")
        }
    }
    
    func updateBookmark(forId: Int) {
        if let index = recipes.firstIndex(where: { $0.id == forId }) {
            recipes[index].bookmark.toggle()
        }
    }
}
