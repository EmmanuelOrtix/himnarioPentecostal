//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    
    @Binding var items: [HimnosModels]
    
    var body: some View {
        VStack(spacing: 15) {
            List(items) { item in
                NavigationLink(
                    destination: HimnosContentView(model: items)){
                    Text(String(item.numero) + ".- " + item.titulo)
                }
            }
        }
    }
}
