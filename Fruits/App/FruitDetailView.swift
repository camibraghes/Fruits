//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Camelia Braghes on 15.03.2022.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                        
                    VStack(alignment: .leading, spacing: 20){
                        //Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColor[1])
                    
                        //Headline
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        
                        //Nutrients
                    
                        //Subheadline
                    Text("Learn more about \(fruit.title)".uppercased())
                        .foregroundColor(fruit.gradientColor[1])
                        .fontWeight(.bold)
                    
                        //Description
                    Text(fruit.description)
                        .font(.caption)
                        
                        //Link
                    SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
