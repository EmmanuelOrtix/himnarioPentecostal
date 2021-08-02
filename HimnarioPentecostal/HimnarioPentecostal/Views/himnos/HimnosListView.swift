//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    
    @Binding var items: [HimnosModels]
    
    var  device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        
        VStack(spacing: 15) {
            List(items.sorted(by: { $0.numero < $1.numero })) { item in
                NavigationLink(
                    destination: HimnosContentView(model: item)) {
                    
                    if device == .pad {
                        Text(String(item.numero) + ".- " + item.titulo)
                            .font(.system(size: 30))
                    } else {
                        Text(String(item.numero) + ".- " + item.titulo)
                    }
                }
            }
        }
    }
}
