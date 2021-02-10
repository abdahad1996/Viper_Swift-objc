 

import Foundation
@testable import dubizzleTest

class PresenterToViewDynamoMock: PresenterToViewDynamoProtocol {
    var showHud = false
    var fetchSuccess = true
    var errorString = ""
    func onFetchDynamoSuccess() {
        fetchSuccess = true
    }
    
    func onFetchDynamoFailure(error: String) {
        fetchSuccess = false
        errorString = error
    }
    
    func showHUD() {
        showHud = true
    }
    
    func hideHUD() {
        showHud = false
    }
    
    
}
