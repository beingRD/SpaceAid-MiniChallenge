//
//  AboutUsTab.swift
//  SpaceAid_Test
//
//  Created by Nicolas Mariniello on 15/11/21.
//

import SwiftUI

struct AboutUsTab: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 128, height: 128)
                .padding(64)
            List {
                Link("Nicolas Mariniello", destination: URL(string: "https://www.github.com/seldon1000")!)
                Link("Rishabh Dev", destination: URL(string: "https://www.github.com/beingRD")!)
                Link("Salvatore Gallo", destination: URL(string: "https://www.github.com/seldon1000")!)
                Link("Raffaele Colantonio", destination: URL(string: "https://www.github.com/Rafas02")!)
            }
        }
    }
}
