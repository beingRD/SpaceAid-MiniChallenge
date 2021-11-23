//
//  CategoryCard.swift
//  SpotAid
//
//  Created by SpaceAid Group on 11/11/21.
//

import SwiftUI

struct CategoryCard: View {
    @Environment(\.isSearching) var isSearching
    
    @EnvironmentObject var UIState: UIStateModel
    
    @State var isActive: Bool = false
    
    let index: Int
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    
    var body: some View {
        ZStack(alignment: .center) {
            Image(categories[index].lowercased())
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: index == UIState.activeCard ? cardHeight : cardHeight * 0.85)
                .cornerRadius(16)
            Text(categories[index])
                .font(.system(size: 48, weight: .bold))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 12)
        }
        .shadow(radius: 4)
        .overlay {
            NavigationLink(destination: List {
                ForEach(places, id: \.self.id) { place in
                    if place.category == categories[UIState.activeCard].lowercased() {
                        PlaceListItem(place: place)
                    }
                }
            }.navigationTitle(categories[UIState.activeCard]).navigationBarTitleDisplayMode(.inline), isActive: $isActive) {}
        }.onTapGesture {
            isActive.toggle()
        }
    }
}
