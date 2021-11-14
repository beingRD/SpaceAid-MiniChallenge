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
    
    var searchedText: String
    
    var body: some View {
        if isSearching {
            PlacesList(searchedText: searchedText)
        } else {
            Carousel(numberOfItems: categories.count)
                .environmentObject(UIStateModel())
        }
    }
}
