//
//  3.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 11/02/2021.
//

 import Foundation
import UIKit
@testable import dubizzleTest

class InteractorToPresenterDetailMock: InteractorToPresenterDetailViewProtocol {
    
    var imageFromUrlSuccess = false
    func getImageFromURLSuccess(result: Result, image: UIImage) {
        imageFromUrlSuccess = true
    }
    
    func getImageFromURLFailure(result: Result) {
        imageFromUrlSuccess = false
    }
    
    
    
    
}
