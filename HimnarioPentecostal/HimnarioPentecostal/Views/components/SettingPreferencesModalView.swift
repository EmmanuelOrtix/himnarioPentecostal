//
//  SettingPreferencesModalView.swift
//  SettingPreferencesModalView
//
//  Created by Emmanuel Ortiz Matus on 22-08-21.
//

import SwiftUI

struct SettingPreferencesModalView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                VStack {
                    Text("aqui iran tus preferencias de usuario")
                    Text("cambios de fondos")
                    Text("cambios de los tamaños")
                }
                .frame(height: 400)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
}
