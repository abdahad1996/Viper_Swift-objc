//
//  MainViewInteractor.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import Foundation
import XCTest
@testable import dubizzleTest
class MainViewInteractorTest:XCTestCase{
    var sut: MainViewInteractor?
    let presenter =  InteractorToPresenterDynamoProtocolMock()
    let service: DynamoAPI = DynamoClientMock()
    
    override func setUp() {
        sut = MainViewInteractor(service:service)
        sut?.presenter = presenter
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testloadResults(){

        // create the expectation
           let exp = expectation(description: "Loading Results")
//
        service.fetchDynamo { [weak self] (Dynamo) -> (Void) in

            guard let dynamo = Dynamo else{
                self?.presenter.fetchResultFailure(errorCode: 2)

                XCTAssertEqual(self?.presenter.isResultSuccess, false)
                exp.fulfill()

                return
            }
            self?.sut?.result = dynamo.results
            print("Results are \(dynamo.results)")
            self?.presenter.fetchResultSuccess(results: dynamo.results)
            XCTAssertEqual(self?.presenter.isResultSuccess, true)

            exp.fulfill()
        }
       //  wait 10 seconds for all outstanding expectations to be fulfilled
            waitForExpectations(timeout: 10)


        
    }
    
    
    
}
