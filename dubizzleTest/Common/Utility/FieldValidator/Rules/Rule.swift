//
//  Rule.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

protocol Rule {
    func validate(value: String) -> Bool
    func errorMessage() -> String
}
