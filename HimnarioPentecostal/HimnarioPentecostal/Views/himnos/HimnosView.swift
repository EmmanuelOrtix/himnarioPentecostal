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
