//
//  FavoritesTab.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 13/11/21.
//

import SwiftUI

struct FavoritesTab: View {
    var body: some View {
        List {
            ForEach(places, id: \.self.id) { place in
                if place.isFavorite {
                    PlaceListItem(place: place)
                }
            }
        }
    }
}
