//
//  GroceryHttpRouter.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 12/06/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//
import Alamofire
import Foundation

enum DynamoHttpRouter {
    case getDynamodb
 
//    case downloadImage(imageName: String)
}

extension DynamoHttpRouter: HttpRouter {
    
    var baseUrlString: String {
        return "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default"
    }
    
    var path: String {
        switch (self) {
        case .getDynamodb:
            return "/dynamodb-writer"
 
//        case .downloadImage(let imageName):
//            return "/image/show/\(imageName)"
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var headers: HTTPHeaders? {
        return [
            "Content-Type": "application/json; charset=UTF-8"
        ]
    }
    
    var parameters: Parameters? {
        return nil
    }
    
    func body() throws -> Data? {
        switch self {
        case .getDynamodb:
//
//             .downloadImage:
            return nil
        }
    }
}
