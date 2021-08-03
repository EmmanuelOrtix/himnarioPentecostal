//
//  HimnosContentView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosContentView: View {
    
    let model: HimnosModels
    var  device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Text(model.titulo)
                        .font(.system(size: device == .pad ? 40 : 25))
                        .fontWeight(.semibold)
                        .padding(.all)
                    Spacer()
                }
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
        }
    }
}
