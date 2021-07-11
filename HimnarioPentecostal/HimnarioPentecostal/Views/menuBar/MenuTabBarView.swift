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
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
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
            AjustesView()
                .tabItem {
                    Text("Ajustes")
                    Image(systemName: "gear")
                }
        }
    }
}

struct MenuTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTabBarView()
    }
}
