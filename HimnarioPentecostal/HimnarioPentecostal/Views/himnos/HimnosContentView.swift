//
//  HimnosContentView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosContentView: View {
    
    let model: HimnosModels
    
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Text(model.titulo).font(.title).fontWeight(.semibold).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("Tiempo: " + String(model.tiempo)).fontWeight(.semibold).padding(.all)
                    Text("Nota: " + model.tono).fontWeight(.semibold).padding(.all)
                    Spacer()
                }
                HStack{
                Text(model.texto)
                    .font(.system(size: 20))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                Spacer()
                }.padding(.leading, 30)
            }
        }
    }
}
