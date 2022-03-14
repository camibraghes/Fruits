//
//  StartButtonView.swift
//  Fruits
//
//  Created by Camelia Braghes on 14.03.2022.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                
            }
        }
        .accentColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(.white, lineWidth: 1.25)
        )

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
