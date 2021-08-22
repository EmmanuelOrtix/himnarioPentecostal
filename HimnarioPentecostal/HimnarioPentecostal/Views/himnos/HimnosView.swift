//
//  HimnosPage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct HimnosView: View {
    
    @StateObject var himnosViewModel = HimnosViewModel()
    
    
    var body: some View {
        ZStack {
            NavigationView {
                HimnosListView(items: $himnosViewModel.model)
            }
        }.onAppear {
            himnosViewModel.getHimnos()
        }
    }
}
