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
        recipes = Bundle.main.decode("recipes.json")
    }

    
    func updateBookmark(forId: Int) {
        if let index = recipes.firstIndex(where: { $0.id == forId }) {
            recipes[index].bookmark.toggle()
        }
    }
}
