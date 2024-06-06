//
//  YourCardsView.swift
//  Finance App Dark Theme
//
//  Created by Ron Erez on 4/30/22.
//

import SwiftUI

struct YourCardsView: View {
    let numActiveCard: Int
    let yourCardsFont: Font = .title3
    let numActiveCardsFont: Font = .caption
    let numActiveCardsFontWeight: Font.Weight = .thin
    var body: some View {
            
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                TextViewGeneral(
                    text: "Your Cards",
                    font: yourCardsFont,
                    fontWeight: .bold,
                color: fontColor)
                
                TextViewGeneral(
                    text: "You have \(numActiveCard) Active Cards",
                    font: numActiveCardsFont,
                    fontWeight: numActiveCardsFontWeight,
                color: fontColor)
            }
            
            Spacer()
            
            let plusDim: CGFloat = 50
            
            Image(systemName: "plus")
                .font(.body.weight(.heavy))
                .frame(width: plusDim, height: plusDim)
                .foregroundColor(darkBackground)
                .background(gold)
                .clipShape(Circle())

        }
        .padding()
        .background(darkBackground)
        .cornerRadius(20)
        .padding(.horizontal)

    }
    
}

struct YourCardsView_Previews: PreviewProvider {
    static var previews: some View {
        YourCardsView(numActiveCard: 3)
    }
}
