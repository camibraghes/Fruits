//
//  OnboardingView.swift
//  Fruits
//
//  Created by Camelia Braghes on 14.03.2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
  }

