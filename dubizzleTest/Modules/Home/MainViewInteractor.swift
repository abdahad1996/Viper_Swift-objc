//
//  MainViewInteractor.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorDynamoProtocol: class {
    
    var presenter: InteractorToPresenterDynamoProtocol? { get set }
    
    func loadResults()
    func goToDetail(at index: Int)
}

class MainViewInteractor:PresenterToInteractorDynamoProtocol {
    
    weak var presenter: InteractorToPresenterDynamoProtocol?
    var result: [Result]?
    
    
    var service: DynamoAPI
    
    
    //    var database: CartDB
    
    init(service: DynamoAPI
//         ,
         //         database: CartDB
         ){
        self.service = service
        //        self.database = database
    }
    func loadResults() {
        print("Interactor receives the request from Presenter to load dynamo from the server.")
        service.fetchDynamo { [weak self] (Dynamo) -> (Void) in
            guard let dynamo = Dynamo else{
                self?.presenter?.fetchResultFailure(errorCode: 2)
                return
            }
            self?.result = dynamo.results
            print("Results are \(dynamo.results)")
            self?.presenter?.fetchResultSuccess(results: dynamo.results)
        }
    }
    
    func goToDetail(at index: Int) {
        guard let result = self.result?[index] else{
            return
        }
        self.presenter?.goToDetailSuccess(result)
    }
    
    
    
    
    
}
