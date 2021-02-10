//
//  FieldValidator.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import UIKit

protocol FieldValidatable {
    var validationRules: [Rule] { get }
    var validationText: String { get }
}
