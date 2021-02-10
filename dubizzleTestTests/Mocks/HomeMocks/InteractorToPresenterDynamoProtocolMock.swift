//
//  File.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import UIKit
@testable import dubizzleTest

class InteractorToPresenterDynamoProtocolMock:InteractorToPresenterDynamoProtocol{
    var isResultSuccess = false
    var goToDetail = false
    func fetchResultSuccess(results: [Result]) {
        isResultSuccess = true
    }
    
    func fetchResultFailure(errorCode: Int) {
        isResultSuccess = false
    }
    
    func goToDetailSuccess(_ result: Result) {
        goToDetail = true
    }
    
    func goToDetailFailure() {
        goToDetail = false
    }
    
    
}
