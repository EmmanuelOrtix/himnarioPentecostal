//
//  HimnosListView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import SwiftUI

struct HimnosListView: View {
    
    @State var animate: Bool = false
    @State var colorText: Color = Color("colorTextPrimary")
    
    @Binding var items: [HimnosModel]
    
    var device = UIDevice.current.userInterfaceIdiom
    
    @State var searchItem = ""
    
    var filtrado: [HimnosModel] {
        searchItem.isEmpty ? items : items.filter {
            $0.titulo.lowercased().contains(searchItem.lowercased()) || "\($0.numero)".contains(searchItem)
        }
    }
    
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

            VStack(spacing: 15) {
                List(filtrado.sorted(by: { $0.numero < $1.numero }), id: \.self) { item in
                    NavigationLink(
                        destination: HimnosContentView(model: item)) {
                            Text(String(item.numero) + ".- " + item.titulo)
                                .font(.system(size: device == .pad ? 30 : 18))
                        }
                        .listRowBackground(Color.clear)
                }
                .scrollContentBackground(.hidden)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .searchable(text: $searchItem)
                .navigationBarTitle("Himnos")
            }
            
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("backgroundColor"),
                                            Color("backgroundColor2")]),
                startPoint: .top, endPoint: .bottom)
        )
    }
}
