//
//  BaseCell.swift
//  espnFantasyApp
//
//  Created by prog on 12/16/19.
//  Copyright © 2019 prog. All rights reserved.
//

import Foundation

import UIKit

protocol Reusable: class{
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)

    }
}

class BaseCell: UICollectionViewCell,Reusable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
