//
//  GroceryHttpService.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 12/06/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Alamofire

final class DynamoHttpService: HttpService {
    var sessionManger: SessionManager = SessionManager.default
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManger.request(urlRequest).validate(statusCode: 200..<400)
    }
}
