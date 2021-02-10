//
//  DetailViewPresenter.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 11/02/2021.
//

import Foundation
 import XCTest
@testable import dubizzleTest
class DetailViewPresenterTest:XCTestCase{
    var sut: DetailViewPresenter?
    let interactorMock = PresenterToInteractorDetailMock()
    let routerMock = PresenterToRouterDetailMock()
    let viewMock = PresenterToViewDetailMock()
//    let mockResults = [Result(createdAt: "today", price: "10", name: "test", uid: "1", imageIDS: ["1","2"], imageUrls:  ["1","2"], imageUrlsThumbnails:  ["1","2"])]
    let mockResult = Result(createdAt: "today", price: "10", name: "test", uid: "1", imageIDS: ["1","2"], imageUrls:  ["1","2"], imageUrlsThumbnails:  ["1","2"])
    
    override func setUp() {
        sut = DetailViewPresenter(view: viewMock, router: routerMock, interactor: interactorMock)
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testViewDidLoadCalled(){
        
        sut?.viewDidLoad()
        XCTAssertEqual(interactorMock.getImageFromUrlCalled, true)
 
    }
    
    func testgetImageFromURLSuccess() {
        guard let image = UIImage(named: "star.png") else {
            XCTAssertEqual(viewMock.didGetImage, false)
            return
        }
        sut?.getImageFromURLSuccess(result: mockResult ,image:image)
         XCTAssertEqual(viewMock.didGetImage, true)
 

 
    }
    
    func testfetchResultFailure() {
        sut?.getImageFromURLFailure(result: mockResult)
        XCTAssertEqual(viewMock.didGetImage, false)
 
        
 
    }
    
     
    
    
}
