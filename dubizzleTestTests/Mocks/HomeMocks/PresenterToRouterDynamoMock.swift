 

import Foundation
import UIKit
@testable import dubizzleTest

class PresenterToRouterDynamoMock:PresenterToRouterDynamoProtocol {
    var isPushToDetailCalled = false
    var reslt:Result?
    func pushToDynamoDetail(with result: Result) {
        isPushToDetailCalled = true
        reslt = result
    }
    
    
}
