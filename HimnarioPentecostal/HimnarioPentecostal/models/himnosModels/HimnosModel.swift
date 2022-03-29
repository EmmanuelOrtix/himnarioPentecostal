//
//  HimnosModels.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 10-07-21.
//

import Foundation

struct HimnosModel: Hashable{
    var id: String
    var categoria: String
    var numero: Int
    var texto: String
    var tiempo: Int
    var titulo, tono: String
}
