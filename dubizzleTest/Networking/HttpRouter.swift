//
//  HttpRouter.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 12/06/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Alamofire
import Foundation

 
 

protocol HttpRouter: URLRequestConvertible {
    var baseUrlString: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    func body() throws -> Data?
    
    func request(usingHttpService service: HttpService) throws -> DataRequest
}

extension HttpRouter {
    
    var parameter: Parameters? { return nil }
    func body() throws -> Data? { return nil }
    
    func asURLRequest() throws -> URLRequest {
        var url = try baseUrlString.asURL()
        url.appendPathComponent(path)
        
        var request = try URLRequest(url: url, method: method, headers: headers)
        request.httpBody = try body()
        return request
    }
    
    func request(usingHttpService service: HttpService) throws -> DataRequest {
        return try service.request(asURLRequest())
    }
}
