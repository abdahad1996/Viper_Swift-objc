//
//  2.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 11/02/2021.
//

import Foundation
import Foundation
import UIKit
@testable import dubizzleTest

class PresenterToInteractorDetailMock: PresenterToInteractorDetailViewProtocol {
    var getImageFromUrlCalled = false

    var presenter: InteractorToPresenterDetailViewProtocol?
    
    var result: Result?
    
    func getImageFromURL() {
        getImageFromUrlCalled = true
    }
    
    
}
