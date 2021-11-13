//
//  SpaceAid_TestApp.swift
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

@main
struct SpaceAid_TestApp: App {
    @State var searchedText: String = ""
    @State var isPresented: Bool = true
    @State var selectedTab: Int = 1
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView(selection: $selectedTab) {
                    ExploreTab(searchedText: searchedText)
                        .tabItem {
                            Label("Explore", systemImage: "house")
                        }
                        .tag(1)
                    FavoritesTab()
                        .tabItem {
                            Label("Favorites", systemImage: "heart.fill")
                        }
                        .tag(2)
                }
                .navigationTitle(selectedTab == 1 ? "Explore" : "Favorites")
            }
            .preferredColorScheme(.light)
            .searchable(text: $searchedText, prompt: "Looking for something?")
        }
    }
}
