//
//  ContentView.swift
//  SpaceAid
//
//  Created by SpaceAid Group on 06/11/21.
//

import SwiftUI

struct ExploreTab: View {
    @Environment(\.isSearching) var isSearching
    @EnvironmentObject var UIState: UIStateModel
    
    var searchedText: String
    
    var body: some View {
        if isSearching {
            List {
                ForEach(places) { place in
                    if place.name.starts(with: searchedText) {
                        PlaceListItem(place: place)
                    }
                }
            }
        } else {
            Carousel()
                .environmentObject(UIState)
        }
    }
}
