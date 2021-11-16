//
//  ContentView.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 06/11/21.
//

import SwiftUI

public class UIStateModel: ObservableObject
{
    @Published var activeCard: Int = 0
    @Published var screenDrag: Float = 0.0
}

struct ExploreTab: View {
    @Environment(\.isSearching) var isSearching
    
    @EnvironmentObject var places: ObservablePlaces
    
    var UIState: UIStateModel = UIStateModel()
    var searchedText: String
    
    var body: some View {
        if isSearching {
            List {
                ForEach(places.places, id: \.self.id) { place in
                    if place.name.starts(with: searchedText) {
                        PlaceListItem()
                            .environmentObject(place)
                    }
                }
            }
        } else {
            Carousel(numberOfItems: categories.count)
                .environmentObject(UIState)
        }
    }
}
