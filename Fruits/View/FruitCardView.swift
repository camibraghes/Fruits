//
//  FruitCardView.swift
//  Fruits
//
//  Created by Camelia Braghes on 14.03.2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: PROPERTIES
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                // Fruits image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .shadow(radius: 8)
                    .offset(x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                    
                // Fruits title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0 , green: 0, blue: 0, opacity: 0.40), radius: 8, x: 2, y: 2)
                
                // Fruits headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button start
                StartButtonView()
                    .opacity(isAnimating ? 1 : 0)
            }//VStack
            
            .frame(minWidth: 0, maxWidth: .infinity
                   , minHeight: 0, maxHeight: .infinity
                   , alignment: .center)
            .background(LinearGradient(gradient: Gradient (colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }// ZStack
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

    // MARK: PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
