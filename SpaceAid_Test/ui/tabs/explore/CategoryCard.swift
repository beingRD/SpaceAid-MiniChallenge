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
    @EnvironmentObject var places: ObservablePlaces
    
    let index: Int
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    
    init(index: Int, cardWidth: CGFloat, cardHeight: CGFloat) {
        self.index = index
        self.cardWidth = cardWidth
        self.cardHeight = cardHeight
    }
    
    var body: some View {
        NavigationLink(destination: List {
            ForEach(places.places, id: \.self.id) { place in
                if place.category == categories[index].lowercased() {
                    PlaceListItem()
                        .environmentObject(place)
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
            .animation(.spring(), value: UIState.screenDrag)
            .animation(.spring(), value: UIState.activeCard)
        }
    }
}
