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

struct CardViewFavourite: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            List {
                HStack {
                    Text("Favoritas")
                    Spacer()
                    Image(systemName: "star")
                }.listRowBackground(Color.clear)
                HStack {
                    Text("Favoritas")
                    Spacer()
                    Image(systemName: "star")
                }.listRowBackground(Color.clear)
            }
            .scrollContentBackground(.hidden)
        }
        .padding(2)
        .frame(maxWidth: .infinity, maxHeight: 250)
        .background(.linearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2").opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style:.continuous))
        .shadow(color: Color("shadowColor").opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: Color("shadowColor").opacity(0.3), radius: 2, x: 0, y: 1)
    }
}

struct CardViewCategory: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Categorias")
                .font(.title2)
                .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
            Text("Congregacional")
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(0.7)
            Text("Alabanzas para entontar en los servicos de culto general")
                .font(.footnote)
            Spacer()        }
        .padding(30)
        .frame(width: 190, height: 250)
        .background(.linearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2").opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style:.continuous))
        .shadow(color: Color("shadowColor").opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: Color("shadowColor").opacity(0.3), radius: 2, x: 0, y: 1)
    }
}

struct CardViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        CardViewCategory()
    }
}
