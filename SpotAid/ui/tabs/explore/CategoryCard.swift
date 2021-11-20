//
//  CategoryCard.swift
//  SpaceAid
//
//  Created by SpaceAid Group on 11/11/21.
//

import SwiftUI

struct CategoryCard: View {
    @Environment(\.isSearching) var isSearching
    @EnvironmentObject var UIState: UIStateModel
    
    let index: Int
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    
    var body: some View {
        NavigationLink(destination: List {
            ForEach(places, id: \.self.id) { place in
                if place.category == categories[index].lowercased() {
                    PlaceListItem(place: place)
                }
            }
        }.navigationTitle(categories[index]).navigationBarTitleDisplayMode(.inline)) {
            ZStack(alignment: .center) {
                Image(categories[index].lowercased())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: cardWidth, height: index == UIState.activeCard ? cardHeight : cardHeight * 0.85)
                    .cornerRadius(16)
                Text(categories[index])
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 12)
            }
            .shadow(radius: 4)
        }
    }
}
