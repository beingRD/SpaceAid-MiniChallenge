//
//  AboutUsTab.swift
//  SpotAid
//
//  Created by SpaceAid Group on 15/11/21.
//

import SwiftUI

struct AboutUsTab: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 128, height: 128)
                .padding(64)
            List {
                Link("\(Image(systemName: "person.circle.fill"))  Nicolas Mariniello", destination: URL(string: "https://www.github.com/seldon1000")!)
                Link("\(Image(systemName: "person.circle.fill"))  Rishabh Dev", destination: URL(string: "https://www.github.com/beingRD")!)
                Link("\(Image(systemName: "person.circle.fill"))  Salvatore Gallo", destination: URL(string: "https://www.github.com/seldon1000")!)
                Link("\(Image(systemName: "person.circle.fill"))  Raffaele Colantonio", destination: URL(string: "https://www.github.com/Rafas02")!)
            }
            .listStyle(.plain)
        }
    }
}
