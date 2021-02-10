//
//  MainViewRouter.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
import UIKit
// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterDynamoProtocol: class {
    
 
    func pushToDynamoDetail( with result: Result)
}
class MainViewRouter:PresenterToRouterDynamoProtocol{
    
    var view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
    func pushToDynamoDetail( with result: Result) {
        let vc = DetailViewModuleBuilder.build(with: result)
        self.view.navigationController?.pushViewController(vc, animated: true)

    }
    
    
}
