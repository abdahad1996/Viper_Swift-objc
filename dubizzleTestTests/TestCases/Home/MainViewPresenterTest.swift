//
//  MainViewPresenter.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import XCTest
@testable import dubizzleTest
class MainViewPresenterTest:XCTestCase{
    var sut: MainViewPresenter?
    let interactorMock = PresenterToInteractorDynamoProtocolMock()
    let routerMock = PresenterToRouterDynamoMock()
    let viewMock = PresenterToViewDynamoMock()
    let mockResults = [Result(createdAt: "today", price: "10", name: "test", uid: "1", imageIDS: ["1","2"], imageUrls:  ["1","2"], imageUrlsThumbnails:  ["1","2"])]
    
    override func setUp() {
        sut = MainViewPresenter(view: viewMock, router: routerMock, interactor: interactorMock)
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testViewDidLoadCalled(){
        
        sut?.viewDidLoad()
        XCTAssertEqual(interactorMock.isResultsLoaded, true)
        XCTAssertEqual(viewMock.showHud, true)
 
    }
    
    func testfetchResultSuccess() {
        sut?.fetchResultSuccess(results: mockResults)
        XCTAssertEqual(viewMock.fetchSuccess, true)
        XCTAssertEqual(viewMock.showHud, false)
        XCTAssertEqual(sut?.numberOfRowsInSection(),mockResults.count )

 
    }
    
    func testfetchResultFailure() {
        sut?.fetchResultFailure(errorCode: 3)
        XCTAssertEqual(viewMock.errorString,"Couldn't fetch quotes: \(3)")
        XCTAssertEqual(viewMock.fetchSuccess, false)
        XCTAssertEqual(viewMock.showHud, false)
 
        
 
    }
    
    func testGoToDetailSuccess(){
        sut?.goToDetailSuccess(Result(createdAt: "today", price: "10", name: "test", uid: "1", imageIDS: ["1","2"], imageUrls:  ["1","2"], imageUrlsThumbnails:  ["1","2"]))
        XCTAssertEqual(routerMock.isPushToDetailCalled, true)
        XCTAssertEqual(routerMock.reslt?.uid,mockResults.first?.uid)
 
    }
    
    
}
