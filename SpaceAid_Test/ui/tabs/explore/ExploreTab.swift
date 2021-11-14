//
//  ContentView.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 06/11/21.
//

import SwiftUI

struct ExploreTab: View {
    var UIState: UIStateModel = UIStateModel()
    
    @Environment(\.isSearching) var isSearching
    var searchedText: String
    
    var body: some View {
        if isSearching {
            PlacesList(searchedText: searchedText)
        } else {
            Carousel(numberOfItems: categories.count)
            .environmentObject(UIState)
        }
    }
}
