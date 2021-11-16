//
//  Places.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 06/11/21.
//

import Foundation
import SwiftUI

let categories = ["Food", "Drink", "Culture"]

class ObservablePlaces : ObservableObject {
    @Published var places: [Place]
    @Published var favoritePlaces: [Place] = []
    
    init() {
        places = [
            Place(name: "Puok", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", address: "Spaccanapoli", category: "food", map: "puok_map"),
            Place(name: "Cammarota", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", address: "Quartieri Spagnoli", category: "drink", map: "puok_map")
        ]
        
        for index in 0..<places.count {
            if places[index].isFavorite {
                favoritePlaces.append(places[index])
            }
        }
    }
    
    public func addFavorite(place: Place) {
        favoritePlaces.append(place)
    }
    
    public func removeFavorite(place: Place) {
        if let i = favoritePlaces.firstIndex(where: { $0 === place}) {
            favoritePlaces.remove(at: i)
        }
    }
}
