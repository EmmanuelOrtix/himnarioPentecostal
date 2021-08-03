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
            if (false){ //eliminar if en otra feature
                HomeView()
                    .tabItem {
                        Text("Home")
                        Image(systemName: "house")
                    }
            }
            HimnosView()
                .tabItem {
                    Text("Himnario")
                    Image(systemName: "doc")
                }
            AlabanzasView()
                .tabItem {
                    Text("Carpeta")
                    Image(systemName: "doc")
                }
            if (false) { //eliminar if en otra feature
                AjustesView()
                    .tabItem {
                        Text("Ajustes")
                        Image(systemName: "gear")
                    }
            }
        }
    }
}
