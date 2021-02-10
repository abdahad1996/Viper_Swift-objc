//
//  GenericDecode.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
protocol DecodeGeneric{
    
}
extension DecodeGeneric{
    func decode<M: Decodable>(jsonData: Data, using modelType: M.Type) -> M? {
        do {
            //here dataResponse received from a network request
            let decoder = JSONDecoder()
            let model = try decoder.decode(modelType, from: jsonData) //Decode JSON Response Data
            return model
        } catch let parsingError {
            print("Error", parsingError)
        }
        return nil
    }
}
