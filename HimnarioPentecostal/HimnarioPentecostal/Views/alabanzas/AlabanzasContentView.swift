//
//  AlabanzasContentView.swift
//  AlabanzasContentView
//
//  Created by Emmanuel Ortiz Matus on 22-08-21.
//

import SwiftUI

struct AlabanzasContentView: View {
    
    @State var animate: Bool = false
    @State var colorText: Color = Color("colorTextPrimary")
    
    let model: AlabanzaModel
    var device = UIDevice.current.userInterfaceIdiom
    
    @State var showSheet: Bool = false
    @AppStorage("fontSize") var customFontSize = 0
    
    var body: some View {
        
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
                .task {
                    withAnimation(.easeInOut(duration: 4).repeatForever()) {
                        animate.toggle()
                    }
                }
            
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
                        Spacer()
                    }.padding([.leading, .bottom], 20)
                    HStack{
                        AttributedText(model.texto.replacingOccurrences(of: "|", with: "\n").replacingOccurrences(of: "{", with: "<b>").replacingOccurrences(of: "}", with: "</b>"))
                            .font(.system(size: device == .pad ? (35 + CGFloat(customFontSize)) : (18 + CGFloat(customFontSize))))
                            .lineLimit(nil)
                            .multilineTextAlignment(device == .pad ? .center : .leading)
                        Spacer()
                    }
                    .padding([.leading,.trailing], 20)
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
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
        
    }
}
