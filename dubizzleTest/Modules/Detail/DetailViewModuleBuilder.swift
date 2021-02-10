//
//  DetailViewModuleBuilder.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import Foundation
import ImageCacheFramework
//import ImageCacheService

import UIKit
class DetailViewModuleBuilder {
    
    static func build(with result: Result) -> UIViewController {
        let view = DetailViewController()
//        view.title = "Main Page".uppercased()
        let router = DetailViewRouter(view: view)
        let interactor = DetailViewInteractor(service: ImageCache.shared)
        let presenter = DetailViewPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        interactor.presenter = presenter
        interactor.result = result
        return view
    }
}
