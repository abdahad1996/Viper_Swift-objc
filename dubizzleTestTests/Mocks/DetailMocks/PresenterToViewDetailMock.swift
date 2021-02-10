//
//  File.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 11/02/2021.
//

import Foundation
import UIKit
@testable import dubizzleTest

class PresenterToViewDetailMock: PresenterToViewDetailViewProtocol {
    var didGetImage = false
    
    func onGetImageFromURLSuccess(_ quote: String, image: UIImage) {
        didGetImage = true
    }
    
    func onGetImageFromURLFailure(_ quote: String) {
        didGetImage = false
    }
    
    
}
