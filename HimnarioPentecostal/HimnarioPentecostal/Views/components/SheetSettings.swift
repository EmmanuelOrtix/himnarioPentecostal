//
//  SheetSettings.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 17-01-23.
//

import SwiftUI

struct ContentSheetSettings: View {
    
    @Binding var customFontSize: Int
    
    var body: some View {
        ZStack{
            Color("backgroundModal").ignoresSafeArea(.all)
            HStack{
                Button(action: {
                    customFontSize -= 2
                }) {
                    Text("A")
                        .frame(width: 180 , height: 50, alignment: .center)
                    
                }
                .background(Color("newGray"))
                .foregroundColor(Color.black)
                .cornerRadius(15, corners:
                                [.topLeft, .bottomLeft])
                Button(action: {
                    customFontSize += 3
                }) {
                    Text("A")
                        .frame(width: 180 , height: 50, alignment: .center)
                        .font(.system(size: 36))
                    
                }
                .background(Color("newGray"))
                .foregroundColor(Color.black)
                .cornerRadius(15, corners:
                                [.topRight, .bottomRight])
                
                
            }
            .padding(.top, 20)
        }
        .presentationDetents([.fraction (0.20)])
        .presentationDragIndicator(.visible)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


