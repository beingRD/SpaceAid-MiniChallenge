//
//  PlacesList.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello & Raffaele Colantonio on 11/11/21.
//

import SwiftUI

struct PlacesList: View {
    var category: String?
    var searchedText: String?
    
    var body: some View {
        List {
            ForEach(places, id: \.self.id) { place in
                if (category != nil && place.category == category) || (searchedText != nil && place.name.starts(with: searchedText!)) {
                    NavigationLink(destination: PlaceDetails(place: place)) {
                        HStack(alignment: .top, spacing: 16){
                            Image(place.name.lowercased())
                                .resizable()
                                .frame(width: 96, height: 96 )
                                .cornerRadius(8)
                                .shadow(radius: 8)
                            VStack(alignment: .leading){
                                Text(place.name)
                                    .font(.system(size: 22, weight: .bold))
                                Text(place.description)
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.black.opacity(0.6))
                                    .lineLimit(4)
                            }
                        }
                        .padding([.top, .bottom], 8)
                    }
                }
            }
        }
    }
}

