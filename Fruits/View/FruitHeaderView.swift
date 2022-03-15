//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Camelia Braghes on 15.03.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
                .background(
                    LinearGradient(colors: fruit.gradientColor, startPoint: .top, endPoint: .bottom))
                
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[3])
    }
}
