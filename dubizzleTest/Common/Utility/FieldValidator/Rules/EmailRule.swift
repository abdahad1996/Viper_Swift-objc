//
//  EmailRule.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Foundation

class EmailRule: Rule {
    
    static let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    private var message: String
    
    init(message: String = "Invalid Email") {
        self.message = message
    }
    
    func validate(value: String) -> Bool {
        let pattern = NSPredicate(format: "SELF MATCHES %@", EmailRule.regex)
        return pattern.evaluate(with: value)
    }
    
    func errorMessage() -> String {
        return message
    }
}
