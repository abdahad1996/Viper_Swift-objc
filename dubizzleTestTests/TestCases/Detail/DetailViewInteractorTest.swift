//
//  DetailViewInteractorTest.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 11/02/2021.
//

import Foundation
import ImageCacheFramework
 import XCTest
@testable import dubizzleTest
class DetailViewInteractorTest:XCTestCase{
    var sut: DetailViewInteractor?
    let presenter =  InteractorToPresenterDetailMock()
    let service =  ImageCache.shared
    let mockResult = Result(createdAt: "today", price: "10", name: "test", uid: "1", imageIDS: ["1","2"], imageUrls:  ["1","2"], imageUrlsThumbnails:  ["1","2"])
    override func setUp() {
        sut = DetailViewInteractor(service:service)
        sut?.presenter = presenter
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
     
    func testGetImageFromURL() {
        
        // create the expectation
           let exp = expectation(description: "Loading Results")
        service.loadImage(urlString: mockResult.imageUrls.first ?? "") { (image) in
            if let img = image {
                self.presenter.getImageFromURLSuccess(result: self.mockResult, image: img)
                XCTAssertEqual(self.presenter.imageFromUrlSuccess, true)
                exp.fulfill()
            }else{
                self.presenter.getImageFromURLFailure(result: self.mockResult)
                XCTAssertEqual(self.presenter.imageFromUrlSuccess, false)
                exp.fulfill()
            }
        }
        //  wait 10 seconds for all outstanding expectations to be fulfilled
             waitForExpectations(timeout: 10)
    
     
    }
    
}
