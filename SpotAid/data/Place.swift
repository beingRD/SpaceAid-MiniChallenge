//
//  Place.swift
//  SpotAid
//
//  Created by SpaceAid Group on 06/11/21.
//

import SwiftUI

class Place: ObservableObject, Identifiable {
    static let userDefaults: UserDefaults = UserDefaults.standard
    
    let name: String
    let description: String
    let image: String
    let address: String
    let category: String
    let distance: String
    let rating: String
    let transportLine: String
    let transportStop: String
    let map: String
    @Published var isFavorite: Bool
    
    init(name: String, description: String, image: String, address: String, category: String, transportLine: String, transportStop: String, map: String){
        self.name = name
        self.description = description
        self.image = image
        self.address = address
        self.category = category
        self.distance = "3.4"
        self.rating = "4.6"
        self.transportLine = transportLine
        self.transportStop = transportStop
        self.map = map
        self.isFavorite = Place.userDefaults.bool(forKey: name)
    }
    
    func favorite() {
        if isFavorite {
            Place.userDefaults.removeObject(forKey: name)
        } else {
            Place.userDefaults.set(true, forKey: name)
        }
        
        isFavorite = !isFavorite
    }
}
