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
    
    var filtrado: [AlabanzaModel] {
        searchItem.isEmpty ? items : items.filter {
            $0.titulo.lowercased().contains(searchItem.lowercased())
        }
    }
    
    var body: some View {
        
        VStack(spacing: 15) {
            List(filtrado, id: \.self) { item in
                NavigationLink(
                    destination: AlabanzasContentView(model: item)) {
                    Text(item.titulo)
                        .font(.system(size: device == .pad ? 30 : 20))
                }
            }
            .searchable(text: $searchItem).navigationBarTitle("Alabanzas")
        }
    }
}
