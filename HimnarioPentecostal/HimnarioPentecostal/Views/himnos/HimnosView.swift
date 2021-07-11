//
//  HimnosPage.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 28-06-21.
//

import SwiftUI

struct HimnosView: View {
    var body: some View {
        NavigationView{
            ZStack {
                HimnosListView()
            }.navigationBarTitle("Himnos", displayMode: .inline)
        }
    }
}

struct HimnosPage_Previews: PreviewProvider {
    static var previews: some View {
        HimnosView()
    }
}
