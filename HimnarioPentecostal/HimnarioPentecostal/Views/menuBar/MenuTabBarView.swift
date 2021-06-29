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
            Text("Himnario")
                .tabItem {
                    Text("Himnario")
                    Image(systemName: "doc")
                }
            Text("Carpeta")
                .tabItem {
                    Text("Carpeta")
                    Image(systemName: "doc")
                }
            Text("Ajustes")
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
