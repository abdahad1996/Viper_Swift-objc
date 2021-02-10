//
//  DynamoClientMock.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
@testable import dubizzleTest
import Alamofire

class DynamoClientMock {
    private lazy var httpService = DynamoHttpServiceMock()
    static let shared : DynamoClientMock = DynamoClientMock()
}

extension DynamoClientMock: DynamoAPI {
    func fetchDynamo(completion: @escaping DynamoClosure) {
        do {
            try DynamoHttpRouterMock
                .getDynamodb
                .request(usingHttpService: httpService)
                .responseJSON { [weak self] (result) in
                    
                    let dynamo = self?.parseCategories(result: result)
                    completion(dynamo)
                }
        } catch {
            print("Something went wrong while fetching categories! = \(error)")
        }
    }
    
    
}
extension DynamoClientMock:DecodeGeneric {
    
    private func parseCategories(result: DataResponse<Any>) -> Dynamo? {
        
        guard [200, 201].contains(result.response?.statusCode), let data = result.data else {
            print("invalid status code returned")
            return nil }
        guard let dynamo = self.decode(jsonData: data,using: Dynamo.self) else{
            print("decoding failed")
            return nil
        }
        return dynamo
//
//        do {
//            return try JSONDecoder().decode(Array<Category>.self, from: data)
//        } catch {
//            print("Something went wrong while parsing categories response")
//        }
//        return []
    }
}

