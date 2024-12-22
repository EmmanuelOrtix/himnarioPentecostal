//
//  MenuTabBarView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct MenuTabBarView: View {
    var body: some View {
        TabView {
            HimnosView()
                .tabItem {
                    Text("Himnario")
                    Image(systemName: "book.pages")
                }
            AlabanzasView()
                .tabItem {
                    Text("Carpeta")
                    Image(systemName: "book.pages")
                }
        }
    }
}
