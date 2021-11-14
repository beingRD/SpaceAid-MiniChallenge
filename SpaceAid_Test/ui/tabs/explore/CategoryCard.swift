//
//  CategoryCard.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 11/11/21.
//

import SwiftUI

struct CategoryCard: View {
    @Environment(\.isSearching) var isSearching
    @EnvironmentObject var UIState: UIStateModel
    
    let index: Int
    let title: String
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    
    init(index: Int, title: String, spacing: CGFloat = 24, widthOfHiddenCards: CGFloat = 24, cardHeight: CGFloat) {
        self.index = index
        self.title = title
        self.cardWidth = UIScreen.main.bounds.width - (widthOfHiddenCards * 2) - (spacing * 2)
        self.cardHeight = cardHeight
    }
    
    var body: some View {
        NavigationLink(destination: PlacesList(category: title.lowercased()).navigationTitle(title).navigationBarTitleDisplayMode(.inline)) {
            ZStack(alignment: .center) {
                Image(title.lowercased())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: cardWidth, height: index == UIState.activeCard ? cardHeight : cardHeight * 0.85)
                    .cornerRadius(16)
                Text(title)
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 16)
            }
        }
        .buttonStyle(PlainButtonStyle())
        .shadow(radius: 8)
        .animation(.spring(), value: UIState.screenDrag)
    }
}
