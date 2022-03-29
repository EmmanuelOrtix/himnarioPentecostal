//
//  AlabanzasPage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct AlabanzasView: View {
    
    @StateObject var alabanzaViewModel = AlabanzaViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                AlabanzasListView(items: $alabanzaViewModel.model)
            }.navigationViewStyle(StackNavigationViewStyle())
        }.onAppear {
            alabanzaViewModel.getAlabanzas()
        }
    }
}
