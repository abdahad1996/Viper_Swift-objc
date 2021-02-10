//
//  GroceryService.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 12/06/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Alamofire
typealias DynamoClosure = (Dynamo?) -> (Void)
 protocol DynamoAPI {
    func fetchDynamo(completion: @escaping DynamoClosure) -> Void
 }
class DynamoClient {
    private lazy var httpService = DynamoHttpService()
    static let shared : DynamoClient = DynamoClient()
}

extension DynamoClient: DynamoAPI {
    
    func fetchDynamo(completion: @escaping DynamoClosure) {
        // Start making the http call to fetch categories
        do {
            try DynamoHttpRouter
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
    
//    func fetchGroceries(completion: (GroceryResult) -> (Void)) {
//
//    }
}

//extension GroceryService: ImagesAPI {
//
//    func fetchImage(imageName: String, completion: @escaping ImageClosure) {
//        do {
//            try GroceryHttpRouter
//                .downloadImage(imageName: imageName)
//                .request(usingHttpService: httpService)
//                .responseData(completionHandler: { (result) in
//                    completion(result.data)
//                })
//        } catch {
//            print("Something went wrong while fetching image! = \(error)")
//        }
//    }
//
//    func fetchThumbnail(imageName: String, completion: @escaping ImageClosure) {
//        do {
//            try GroceryHttpRouter
//                .downloadThumbnail(imageName: imageName)
//                .request(usingHttpService: httpService)
//                .responseData(completionHandler: { (result) in
//                    completion(result.data)
//                })
//        } catch {
//            print("Something went wrong while fetching thumbnail! = \(error)")
//        }
//    }
//}

extension DynamoClient:DecodeGeneric {
    
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
