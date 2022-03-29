//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    
    @Binding var items: [HimnosModel]
    
    var  device = UIDevice.current.userInterfaceIdiom
    
    @State var searchItem = ""
    
    var filtrado: [HimnosModel] {
        searchItem.isEmpty ? items : items.filter {
            $0.titulo.lowercased().contains(searchItem.lowercased()) || "\($0.numero)".contains(searchItem)
        }
    }
    
    var body: some View {
        
        VStack(spacing: 15) {
            List(filtrado.sorted(by: { $0.numero < $1.numero }), id: \.self) { item in
                NavigationLink(
                    destination: HimnosContentView(model: item)) {
                    Text(String(item.numero) + ".- " + item.titulo)
                        .font(.system(size: device == .pad ? 30 : 20))
                }
            }.searchable(text: $searchItem).navigationBarTitle("Himnario")
        }
    }
}
