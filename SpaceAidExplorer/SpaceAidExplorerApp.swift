//
//  SpaceAid_TestApp.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 06/11/21.
//

import SwiftUI

@main
struct SpaceAid_TestApp: App {
    @State var searchedText: String = ""
    @State var selectedTab: Int = 1
    
    var places: ObservablePlaces = ObservablePlaces()
    
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
                    FavoritesTab()
                        .tabItem {
                            Label("Favorites", systemImage: "heart.fill")
                        }
                        .tag(2)
                    AboutUsTab()
                        .tabItem {
                            Label("About Us", systemImage: "info.circle.fill")
                        }
                        .tag(3)
                }
                .navigationTitle(getNavigationTitle())
            }
            .environmentObject(places)
            .environmentObject(ObservableFavoritePlaces(places: places.places))
            .preferredColorScheme(.light)
            .searchable(text: $searchedText, prompt: "Looking for something?")
        }
    }
}
