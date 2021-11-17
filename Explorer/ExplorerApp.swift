//
//  SpaceAid_TestApp.swift
//  SpaceAidExplorer
//
//  Created by SpaceAid Group on 06/11/21.
//

import SwiftUI

@main
struct SpaceAid_TestApp: App {
    @State var searchedText: String = ""
    @State var selectedTab: Int = 1
    @State var favorites: [Place] = places.filter { $0.isFavorite }
    
    func getNavigationTitle() -> String {
        switch selectedTab {
        case 1: return "Explore"
        case 2: return "Favorites"
        case 3: return "About Us"
        default:
            return ""
        }
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView(selection: $selectedTab) {
                    ExploreTab(searchedText: searchedText)
                        .tabItem {
                            Label("Explore", systemImage: "house")
                        }
                        .tag(1)
                    FavoritesTab(favorites: favorites)
                        .tabItem {
                            Label("Favorites", systemImage: "heart.fill")
                        }
                        .tag(2)
                        .onAppear {
                            favorites = places.filter { $0.isFavorite }
                        }
                    AboutUsTab()
                        .tabItem {
                            Label("About Us", systemImage: "info.circle.fill")
                        }
                        .tag(3)
                }
                .navigationTitle(getNavigationTitle())
            }
            .preferredColorScheme(.light)
            .searchable(text: $searchedText, prompt: "Looking for something?")
        }
    }
}
