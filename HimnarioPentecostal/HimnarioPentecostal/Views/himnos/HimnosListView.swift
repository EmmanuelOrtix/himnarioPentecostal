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
    
    var  device = UIDevice.current.userInterfaceIdiom
    
    @State var searchItem = ""
    
    var filtrado: [HimnosModel] {
        searchItem.isEmpty ? items : items.filter {
            $0.titulo.lowercased().contains(searchItem.lowercased()) || "\($0.numero)".contains(searchItem)
        }
    }
    
    var body: some View {
        
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
                .navigationBarTitle("Indice")
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
            )
            
        }
    }

//var body: some View {
//    
//    let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W", "X","Y", "Z"]
//
//        VStack(spacing: 15){
//            List {
//                ForEach(alphabet, id: \.self) { letter in
//                    Section(header: Text(letter)) {
//                        ForEach(filtrado.filter { $0.titulo.hasPrefix(letter) }.sorted(by: { $0.titulo < $1.titulo }), id: \.self) { vals in
//                            NavigationLink(
//                                destination: HimnosContentView(model: vals)) {
//                                    Text(vals.titulo).id(vals)
//                                        .font(.system(size: device == .pad ? 30 : 14))
//                                }.listRowBackground(Color.clear)
//                        }
//                    }
//                    .id(letter)
//                }
//            }
//            .scrollContentBackground(.hidden)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//            .searchable(text: $searchItem)
//            .navigationBarTitle("Indice")
//        }
//        .background(
//            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
//        )
//        
//    }
//}
