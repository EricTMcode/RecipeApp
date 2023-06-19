//
//  TitleModifier.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(.GreenAdaptive)
            .padding(8)
    }
}
