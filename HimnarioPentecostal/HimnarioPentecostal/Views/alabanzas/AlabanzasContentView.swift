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
    
    @State var showSheet: Bool = false
    @AppStorage("fontSize") var customFontSize = 0
    
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
                    Text(model.texto)
                        .font(.system(size: device == .pad ? (35 + CGFloat(customFontSize)) : (18 + CGFloat(customFontSize))))
                        .lineLimit(nil)
                        .multilineTextAlignment(device == .pad ? .center : .leading)
                    Spacer()
                }
                .padding(.leading, 20)
            }
            .toolbar {
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

        }.navigationTitle(model.titulo)
    }
}
