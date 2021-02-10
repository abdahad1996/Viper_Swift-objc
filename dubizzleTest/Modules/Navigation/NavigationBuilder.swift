//
//  NavigationBuilder.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 28/05/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import UIKit

typealias NavigationFactory = (UIViewController) -> (UINavigationController)

class NavigationBuilder {
    
    static func build(rootView: UIViewController) -> UINavigationController {
        
        let textStyleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : MyColors.MainPage().PrimaryLabel,
            .font : UIFont.init(name: "AvenirNextCondensed-DemiBold", size: 22.0)!
        ]
        
        let largeTextStyleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor :  MyColors.MainPage().PrimaryLabel,
            .font : UIFont.init(name: "AvenirNextCondensed-DemiBold", size: 28.0)!
        ]
        
        let navigationController = UINavigationController(rootViewController: rootView)
        navigationController.navigationBar.barTintColor = UIColor.white
        navigationController.navigationBar.tintColor =  MyColors.MainPage().PrimaryLabel
        navigationController.navigationBar.titleTextAttributes = textStyleAttributes
        navigationController.navigationBar.largeTitleTextAttributes = largeTextStyleAttributes
        navigationController.navigationBar.isTranslucent = false
//        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }
}
