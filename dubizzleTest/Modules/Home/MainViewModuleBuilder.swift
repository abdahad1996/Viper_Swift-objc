//
//  MainViewModuleBuilder.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
import UIKit
class MainViewModuleBuilder {
    
    static func build(usingNavigationFactory factory: NavigationFactory) -> UIViewController {
        let view = MainViewController()
        view.title = "Main Page".uppercased()
        let router = MainViewRouter(view: view)
        let interactor = MainViewInteractor(service: DynamoClient.shared)
        let presenter = MainViewPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        interactor.presenter = presenter
        return factory(view)
    }
}
