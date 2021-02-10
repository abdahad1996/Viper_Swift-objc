//
//  PasswordRule.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Foundation

class PasswordRule: Rule {
    
    static let regex = "^.{6,12}$"
    private var message: String
    
    init(message: String = "Must be between 6 and 12 characters") {
        self.message = message
    }
    
    func validate(value: String) -> Bool {
        let pattern = NSPredicate(format: "SELF MATCHES %@", PasswordRule.regex)
        return pattern.evaluate(with: value)
    }
    
    func errorMessage() -> String {
        return message
    }
}
