//
//  HimnosPage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct HimnosView: View {
    
    @State var filteredItems = listaHimnario
    
    var body: some View {
        ZStack {
            CustomNavigationView(view: HimnosListView(items: $filteredItems), onSearch: {
                (txt) in
                
                if txt != "" {
                    self.filteredItems = listaHimnario.filter{
                        $0.titulo.uppercased().contains(txt.uppercased()) || String($0.numero).contains(txt)
                    }
                }else {
                    self.filteredItems = listaHimnario
                }
                
            }, onCancel: {
                self.filteredItems = listaHimnario
            })
            .ignoresSafeArea()
        }
        
    }
}
