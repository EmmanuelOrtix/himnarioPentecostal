//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    @State var text = ""
    var body: some View {
        VStack {
            SearchBar(text: $text).background(Color(.systemGray6))
            
            List(listaHimnario.sorted(by: { $0.numero < $1.numero }).filter({
                "\($0.numero)".contains(text) || text.isEmpty || "\($0.titulo)".contains(text.uppercased())
            })) { item in
                NavigationLink(
                    destination: HimnosContentView(model: item)){
                    Text(String(item.numero) + ".- " + item.titulo)
                }
            }
        }.background(Color(.systemGray6))
    }
}

struct HimnosListView_Previews: PreviewProvider {
    static var previews: some View {
        HimnosListView()
    }
}
