//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Eric on 19/06/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @State private var pulsate = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.GreenAdaptive)
                        .padding(.top, 10)
                    
                    RecipeRating(recipe: recipe)
                    RecipeCooking(recipe: recipe)
                    
                    TitleView(text: "Ingredients")
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    TitleView(text: "Instructions")
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(.GreenAdaptive)
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                        
                    }
                    .padding(.trailing,  20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear {
            pulsate.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.example)
    }
}

struct TitleView: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .modifier(TitleModifier())
    }
}
