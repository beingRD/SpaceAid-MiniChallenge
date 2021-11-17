//
//  FavoritesTab.swift
//  SpaceAidExplorer
//
//  Created by SpaceAid Group on 13/11/21.
//

import SwiftUI

struct FavoritesTab: View {
    var favorites: [Place]
    
    var body: some View {
        if favorites.isEmpty {
            Text("Click the \(Image(systemName: "heart")) to add a place to the favorites")
                .font(.headline)
                .foregroundColor(.gray)
        } else {
            List {
                ForEach(favorites) { place in
                    PlaceListItem(place: place)
                }
            }
        }
    }
}
