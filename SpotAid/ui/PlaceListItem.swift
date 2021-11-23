//
//  PlacesList.swift
//  SpotAid
//
//  Created by SpaceAid Group on 11/11/21.
//

import SwiftUI

struct PlaceListItem: View {
    @StateObject var place: Place
    
    var body: some View {
        NavigationLink(destination: PlaceDetails(place: place)) {
            HStack(alignment: .top, spacing: 16){
                Image(place.image)
                    .resizable()
                    .frame(width: 96, height: 96 )
                    .cornerRadius(8)
                    .shadow(radius: 8)
                VStack(alignment: .leading){
                    Text(place.name)
                        .font(.system(size: 22, weight: .bold))
                    Text(place.description)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                        .lineLimit(4)
                }
            }
            .padding(.vertical, 8)
        }
    }
}
