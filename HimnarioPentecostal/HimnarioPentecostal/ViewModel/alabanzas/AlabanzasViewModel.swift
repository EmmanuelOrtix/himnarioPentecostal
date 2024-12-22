//
//  AlabanzasViewModel.swift
//  AlabanzasViewModel
//
//  Created by Emmanuel Ortiz Matus on 22-08-21.
//

import Foundation
import Firebase

class AlabanzaViewModel : ObservableObject {
    
    @Published var model = [AlabanzaModel]()
    
    func getAlabanzas(){
        let alabanza = "himnariov2"
        let db = Firestore.firestore()
        
        db.collection(alabanza)
            .whereField("categoria", isEqualTo: "carpeta")
            .addSnapshotListener { (query, error) in
            if let error = error?.localizedDescription {
                print("error al mostrar los datos", error)
            } else {
                self.model.removeAll()
                
                for document in query!.documents {
                    let data = document.data()
                    let id = document.documentID
                    let categoria = data["categoria"] as? String ?? ""
                    let numero = data["numero"] as? Int ?? 0
                    let texto = data["texto"] as? String ?? ""
                    let tiempo = data["tiempo"] as? Int ?? 0
                    let titulo = data["titulo"] as? String ?? ""
                    let tono = data["tono"] as? String ?? ""
                    
                    DispatchQueue.main.async {
                        let datos = AlabanzaModel(
                            id:id,
                            categoria: categoria,
                            numero: numero,
                            texto: texto,
                            tiempo: tiempo,
                            titulo: titulo,
                            tono: tono
                        )
                        self.model.append(datos)
                    }
                }
            }
        }
    }
}
