//
//  CustomNavigationView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 11-07-21.
//

import SwiftUI

struct CustomNavigationView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return CustomNavigationView.Coordinator(parent: self)
    }
    
    var view: HimnosListView
    
    var onSearch: (String)-> ()
    var onCancel: ()->()
    
    init(view: HimnosListView ,onSearch: @escaping (String)->(), onCancel: @escaping ()->()) {
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }
    
    func makeUIViewController(context: Context) -> UINavigationController {
        
        let childView = UIHostingController(rootView: view)
        let controller = UINavigationController(rootViewController: childView)
        
        controller.navigationBar.topItem?.title = "Himnario"
        controller.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "busqueda..."
        
        searchController.searchBar.delegate = context.coordinator
        
        searchController.obscuresBackgroundDuringPresentation = false
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        controller.navigationBar.topItem?.searchController = searchController
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
    
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        var parent: CustomNavigationView
        
        init(parent: CustomNavigationView) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            self.parent.onSearch(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            self.parent.onCancel()
        }
    }
}

