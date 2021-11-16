//
//  FavoritesTab.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 13/11/21.
//

import SwiftUI

struct FavoritesTab: View {
    @EnvironmentObject var places: ObservablePlaces
    @EnvironmentObject var favoritePlaces: ObservableFavoritePlaces
    
    var body: some View {
        if favoritePlaces.favoritePlaces.isEmpty {
            Text("Click the \(Image(systemName: "heart")) to add a place to the favorites")
                .font(.headline)
                .foregroundColor(.gray)
        } else {
            List {
                ForEach(favoritePlaces.favoritePlaces, id: \.self.id) { place in
                        PlaceListItem()
                            .environmentObject(place)
                }
            }
        }
    }
}
