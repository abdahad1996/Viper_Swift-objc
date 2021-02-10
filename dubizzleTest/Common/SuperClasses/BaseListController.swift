//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 2/14/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import UIKit
class CustomNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
extension UINavigationController {
    func setTitleForgroundTitleColor(_ color: UIColor) {
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): color]
    }

    func setLargeTitleColor(_ color: UIColor) {
        self.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): color]
    }

    func setAllTitleColor(_ color: UIColor) {
        setTitleForgroundTitleColor(color)
        setLargeTitleColor(color)
    }
}
class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
