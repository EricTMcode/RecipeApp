//
//  RecipeListView.swift
//  RecipeApp
//
//  Created by Eric on 17/06/2023.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var vm: RecipeListViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(vm.recipes) { recipe in
                    RecipeCard(recipe: recipe)
                }
            }
            .frame(maxWidth: 640)
            .padding(.horizontal)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeListViewModel())
    }
}
