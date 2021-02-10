//
//  ResultViewModel.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
struct ResultViewModel {
    
    let id: String
    let title: String
     let image: String
    let price: String
    
    init(using result: Result) {
        self.id = result.uid
        self.title = result.name
        self.image = result.imageUrls.first ?? ""
        self.price = "\(result.price)"
    }
}
