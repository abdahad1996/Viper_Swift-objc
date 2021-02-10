 

import Foundation
@testable import dubizzleTest

class PresenterToInteractorDynamoProtocolMock: PresenterToInteractorDynamoProtocol {
    var presenter: InteractorToPresenterDynamoProtocol?
    
    var isResultsLoaded = false
    var goToDetails = false
    
    func loadResults() {
        isResultsLoaded = true
    }
    
    func goToDetail(at index: Int) {
        goToDetails = true
    }
    


}
