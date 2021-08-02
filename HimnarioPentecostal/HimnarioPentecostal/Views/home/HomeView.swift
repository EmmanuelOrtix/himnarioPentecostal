//
//  HomePage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack {
                CardViewProfile()
                Button(action: {
                    
                }){
                    Text("Editar")
                }
                Spacer()
            }.padding(.top, 50)
            VStack{
                CardViewOptionHome()
            }
            .background(Color.white.edgesIgnoringSafeArea(.all))
            .cornerRadius(10)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
