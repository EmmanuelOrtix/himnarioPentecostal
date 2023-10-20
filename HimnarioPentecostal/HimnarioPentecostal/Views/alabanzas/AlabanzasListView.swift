//
//  AlabanzasListView.swift
//  AlabanzasListView
//
//  Created by Emmanuel Ortiz Matus on 22-08-21.
//

import SwiftUI

struct AlabanzasListView: View {
    
    @Binding var items: [AlabanzaModel]
    
    var  device = UIDevice.current.userInterfaceIdiom
    
    @State var searchItem = ""
    
    var body: some View {
        
        VStack(spacing: 15) {
            List(items, id: \.self) { item in
                Text(item.titulo)
                    .font(.system(size: device == .pad ? 30 : 20))
            }.navigationBarTitle("Alabanzas")
        }
    }
}
