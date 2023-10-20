//
//  HimnosPage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct HimnosView: View {
    
    @State var animate: Bool = false
    @State var colorText: Color = Color("colorTextPrimary")
    
    @StateObject var himnosViewModel = HimnosViewModel()
    
    @State private var showModal = false
    
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
            
            NavigationView{
                HimnosListView(items: $himnosViewModel.model)
            }.navigationViewStyle(StackNavigationViewStyle())
            
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        ).onAppear {
            himnosViewModel.getHimnos()
        }
    }
}
