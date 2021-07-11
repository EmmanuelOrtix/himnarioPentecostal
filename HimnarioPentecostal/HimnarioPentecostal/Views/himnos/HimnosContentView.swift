//
//  HimnosContentView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosContentView: View {
    
    let model: himnarioModel
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Tiempo: " + String(model.tiempo)).fontWeight(.semibold).padding(.all)
                    Text("Nota: " + model.tono).fontWeight(.semibold).padding(.all)
                    Spacer()
                }
                HStack{
                Text(model.texto)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                Spacer()
                }.padding(.leading, 30)
            }.navigationBarTitle(model.titulo)
        }
    }
}
