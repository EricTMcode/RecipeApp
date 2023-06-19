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
        let jsonURL = Bundle.main.url(forResource: "recipes", withExtension: "json")
        do {
            let data = try Data(contentsOf: jsonURL!)
            var recipes = try JSONDecoder().decode([Recipe].self, from: data)
            
            for index in 0..<recipes.count {
                recipes[index].id = UUID()
            }
            self.recipes = recipes
        } catch {
            print("Couldn't parse local data")
        }
    }
    
    func updateBookmark(forId: UUID?) {
        if let index = recipes.firstIndex(where: { $0.id == forId }) {
            recipes[index].bookmark.toggle()
        }
    }
}
