//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    var body: some View {
        ZStack {
            List(listaHimnario.sorted(by: { $0.numero < $1.numero })) { item in
                NavigationLink(
                    destination: HimnosContentView(model: item)){
                    Text(String(item.numero) + ".- " + item.titulo)
                }
            }
        }
    }
}

struct HimnosListView_Previews: PreviewProvider {
    static var previews: some View {
        HimnosListView()
    }
}
