//
//  DynamoHttpRouterMock.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Alamofire
import Foundation
@testable import dubizzleTest

enum DynamoHttpRouterMock {
    case getDynamodb
 
//    case downloadImage(imageName: String)
}

extension DynamoHttpRouterMock: HttpRouter {
    
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
