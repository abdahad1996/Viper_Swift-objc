//
//  dynamoHttpServiceMock.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import Alamofire
@testable import dubizzleTest



 
final class DynamoHttpServiceMock: HttpService {
    
    var sessionManger: SessionManager =  MockAlamofire.mockAlamofireManager
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        //return mockedJsonResponse
        MockURLProtocol.requestHandler =  { request in
             return (HTTPURLResponse(), mockJSONDataForDynamo ,nil)
        }
        return sessionManger.request(urlRequest).validate(statusCode: 200..<400)
    }
}
