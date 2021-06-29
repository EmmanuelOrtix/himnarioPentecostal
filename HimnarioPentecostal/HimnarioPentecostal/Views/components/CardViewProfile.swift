//
//  CardViewProfile.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct CardViewProfile: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("profile")
                .resizable()
                .frame(width: 128, height: 128)
                .aspectRatio(contentMode: .fit)
        }.padding()
        .background(Color.gray.opacity(0.3))
        .cornerRadius(200)
    }
}

struct CardViewOptionHome: View {
    var body: some View{
        VStack{
            HStack {
                Text("Favoritas")
                Spacer()
                Image(systemName: "star")
            }
            Divider()
            HStack {
                Text("Busqueda Avanzada")
                Spacer()
                Image(systemName: "magnifyingglass")
            }
            Divider()
            HStack {
                Text("Recien Vistas")
                Spacer()
                Image(systemName: "eyes")
            }.disabled(true)
            Divider()
            HStack {
                Text("Añadir")
                Spacer()
                Image(systemName: "folder.badge.plus")
            }
            .disabled(true)
            Divider()
        }.padding()
        .frame(width: 400, height: 200, alignment: .trailing)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CardViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        CardViewOptionHome()
    }
}
