//
//  AlabanzasContentView.swift
//  AlabanzasContentView
//
//  Created by Emmanuel Ortiz Matus on 22-08-21.
//

import SwiftUI

struct AlabanzasContentView: View {
    let model: AlabanzaModel
    var device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Tiempo: " + String(model.tiempo))
                        .font(.system(size: device == .pad ? 30 : 18))
                        .fontWeight(.semibold)
                        .padding(.all)
                    Text("Nota: " + model.tono)
                        .font(.system(size: device == .pad ? 30 : 18))
                        .fontWeight(.semibold)
                        .padding(.all)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text(model.texto)
                        .font(.system(size: device == .pad ? 35 : 20))
                        .lineLimit(nil)
                        .multilineTextAlignment(device == .pad ? .center : .leading)
                    Spacer()
                }
            }
        }.navigationTitle(model.titulo)
    }
}
