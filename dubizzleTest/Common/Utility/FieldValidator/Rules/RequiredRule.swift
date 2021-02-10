//
//  RequiredRule.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 06/10/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

open class RequiredRule: Rule {
    
    private var message: String

    init(message: String = "Required") {
        self.message = message
    }
    
    func validate(value: String) -> Bool {
        return !value.isEmpty
    }
    
    func errorMessage() -> String {
        return message
    }
}
