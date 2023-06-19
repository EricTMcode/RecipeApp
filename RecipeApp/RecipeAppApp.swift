//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Eric on 17/06/2023.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject var vm = RecipeListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
