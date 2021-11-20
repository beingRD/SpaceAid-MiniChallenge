//
//  SwiftUIView.swift
//  SpotAid
//
//  Created by SpaceAid Group on 09/11/21.
//

import SwiftUI

struct PlaceDetails: View {
    @StateObject var place: Place
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image(place.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height * 0.3)
                    .cornerRadius(16)
                    .shadow(radius: 8)
                HStack{
                    VStack{
                        VStack(alignment: .center) {
                            Text("\(Image(systemName: "star.fill")) \(place.rating)")
                                .font(.headline)
                            Text("Very good")
                                .font(.system(size: 12, weight: .regular))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(Color("yellowDark"))
                        .background(.yellow.opacity(0.13))
                        .cornerRadius(12)
                        Text("Rating")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color("yellowDark"))
                    }
                    .frame(width: (UIScreen.main.bounds.width - 48) / 3, height: UIScreen.main.bounds.height * 0.1)
                    Spacer()
                    VStack {
                        VStack(alignment: .center) {
                            Text("\(Image(systemName: "location.fill")) \(place.distance) km")
                                .font(.headline)
                            Text("From the Academy")
                                .font(.system(size: 12, weight: .regular))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(Color("redDark"))
                        .background(.red.opacity(0.13))
                        .cornerRadius(12)
                        Text("Distance")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color("redDark"))
                    }
                    .frame(width: (UIScreen.main.bounds.width - 48) / 3, height: UIScreen.main.bounds.height * 0.1)
                    Spacer()
                    VStack{
                        VStack {
                            Text("\(Image(systemName: "tram.fill")) Line 1")
                                .font(.headline)
                            Text("Toledo")
                                .font(.system(size: 12, weight: .regular))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(Color("greenDark"))
                        .background(.green.opacity(0.13))
                        .cornerRadius(12)
                        Text("Transport")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color("greenDark"))
                    }
                    .frame(width: (UIScreen.main.bounds.width - 48) / 3, height: UIScreen.main.bounds.height * 0.1)
                }
                .frame(width: UIScreen.main.bounds.width - 32)
                .padding(.top, 12)
                .padding(.bottom, 8)
                Text("DESCRIPTION")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.black.opacity(0.6))
                    .padding(.leading, 8)
                    .padding(.bottom, 4)
                Text(place.description)
                    .padding()
                    .background(Color("myGray"))
                    .cornerRadius(16)
                Text("ADDRESS & MAP PREVIEW")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.black.opacity(0.6))
                    .padding(.leading, 8)
                    .padding(.top, 16)
                    .padding(.bottom, 4)
                Text(place.address)
                Image(place.map)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width - 52)
                    .cornerRadius(16)
            }
            .navigationTitle(place.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: { place.favorite() }) {
                Image(systemName: place.isFavorite ? "heart.fill" : "heart")
            })
            .padding()
        }
    }
}
