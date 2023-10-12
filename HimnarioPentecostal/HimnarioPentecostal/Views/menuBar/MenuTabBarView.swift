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
            HomeView()
                .tabItem{
                    Text("Inicio")
                    Image(systemName: "house.fill")
                }
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
            SettingsView()
                .tabItem {
                    Text("Configuraciones")
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}
