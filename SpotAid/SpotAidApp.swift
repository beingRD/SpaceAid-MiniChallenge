//
//  SpaceAidApp.swift
//  SpotAid
//
//  Created by SpaceAid Group on 06/11/21.
//

import SwiftUI

class UIStateModel: ObservableObject
{
    @Published var activeCard: Int = 0
    @Published var screenDrag: Float = 0.0
}

@main
struct ExplorerApp: App {
    @State var searchedText: String = ""
    @State var selectedTab: Int = 1
    @State var favorites: [Place] = places.filter { $0.isFavorite }
    
    var UIState: UIStateModel = UIStateModel()
    
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
                        .environmentObject(UIState)
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
