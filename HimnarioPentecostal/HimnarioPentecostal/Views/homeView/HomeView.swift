//
//  HomeView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 12-10-23.
//

import SwiftUI

struct HomeView: View {
    @State var animate: Bool = false
    @State var colorText: Color = Color("colorTextPrimary")
    
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
            
            VStack {
                Text("MultiHimnario")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(colorText)
                
                ScrollView(.vertical, showsIndicators: false) {
                    CardViewFavourite().padding(.top, 50).padding([.trailing, .leading], 20)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            CardViewCategory()
                            CardViewCategory()
                            CardViewCategory()
                            CardViewCategory()
                            CardViewCategory()
                        }
                        .padding(.top, 50)
                        .padding(.bottom, 50)
                        .padding([.trailing, .leading], 20)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    HomeView()
}
