//
//  MinimumLengthRule.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

class MinimumLengthRule: Rule {
    
    let MIN_LENGTH = 3
    private var message: String
    
    init(message: String) {
        self.message = message
    }
    
    func validate(value: String) -> Bool {
        return value.count > 3
    }
    
    func errorMessage() -> String {
        return message
    }
}
