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
            List(items.sorted(by: { $0.numero < $1.numero })) { item in
                NavigationLink(
                    destination: HimnosContentView(model: item)) {
                    Text(String(item.numero) + ".- " + item.titulo)
                }
            }
        }
    }
}
