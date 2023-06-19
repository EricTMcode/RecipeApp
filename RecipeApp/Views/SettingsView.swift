//
//  SettingsView.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            Text("V1.0.0")
                .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
