//
//  HimnosContentView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosContentView: View {
    
    let model: HimnosModel
    var  device = UIDevice.current.userInterfaceIdiom
    
    @State var showSheet: Bool = false
    
    @AppStorage("fontSize") var customFontSize = 0
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Tiempo: " + String(model.tiempo))
                        .font(.system(size: device == .pad ? 30 : 18))
                        .fontWeight(.semibold)
                    Text("Nota: " + model.tono)
                        .font(.system(size: device == .pad ? 30 : 18))
                        .fontWeight(.semibold)
                    Spacer()
                }.padding([.leading, .bottom], 20)
                HStack{
                    Text(model.texto)
                        .font(.system(size: device == .pad ? (35 + CGFloat(customFontSize)) : (18 + CGFloat(customFontSize))))
                        .lineLimit(nil)
                        .multilineTextAlignment(device == .pad ? .center : .leading)
                    Spacer()
                }.padding(.leading, 20)
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    Text(model.titulo)
                        .font(.title2).fontWeight(.bold)
                })
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        showSheet.toggle()
                    } label: {
                        Label("settings", systemImage: "gearshape")
                    }
                    .sheet(isPresented: $showSheet) {
                        ContentSheetSettings(customFontSize: $customFontSize)
                    }
                }
                
            }
        }
    }
}
