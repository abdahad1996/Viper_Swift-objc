//
//  MainViewPresenter.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//
import UIKit
import Foundation

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterDynamoProtocol: class {
    
    var view: PresenterToViewDynamoProtocol? { get set }
//    var interactor: PresenterToInteractorQuotesProtocol? { get set }
//    var router: PresenterToRouterQuotesProtocol? { get set }
    
    var result: [Result]? { get set }
    
    func viewDidLoad()
    
//    func refresh()
    
    func numberOfRowsInSection() -> Int
    func viewModelForEachCell(indexPath: IndexPath) -> ResultViewModel?
    
    func didSelectRowAt(index: Int)
 
}
// MARK: handling input from view
class MainViewPresenter:ViewToPresenterDynamoProtocol{
    // MARK: Properties
   weak var view: PresenterToViewDynamoProtocol?
   var router: PresenterToRouterDynamoProtocol?
    var interactor: PresenterToInteractorDynamoProtocol?
    
    init(view: PresenterToViewDynamoProtocol
         , router: PresenterToRouterDynamoProtocol, interactor: PresenterToInteractorDynamoProtocol
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    // MARK: Inputs from view
    var result: [Result]?
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        view?.showHUD()
        interactor?.loadResults()
    }
    
//    func refresh() {
//        <#code#>
//    }
    
    func numberOfRowsInSection() -> Int {
        guard let result = self.result else {
            return 0
        }
        
        return result.count
    }
    
    func viewModelForEachCell(indexPath: IndexPath) -> ResultViewModel? {
        guard let result = self.result else {
            return nil
        }
        
        return ResultViewModel(using: result[indexPath.row])
        
    }
    
    func didSelectRowAt(index: Int) {
        print("getting index path \(index) ")
        interactor?.goToDetail(at: index)
    }
    
        
    }


 
// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterDynamoProtocol: class {
    
    func fetchResultSuccess(results: [Result])
    func fetchResultFailure(errorCode: Int)
    
    func goToDetailSuccess(_ result: Result)
    func goToDetailFailure()
    
}

extension MainViewPresenter:InteractorToPresenterDynamoProtocol{
    func fetchResultSuccess(results: [Result]) {
    print("Presenter receives the result from Interactor after it's done its job.")
        self.result = results
        view?.hideHUD()
        view?.onFetchDynamoSuccess()

    }
    
    func fetchResultFailure(errorCode: Int) {
        print("Presenter receives the result from Interactor after it's done its job.")
        view?.hideHUD()
        view?.onFetchDynamoFailure(error: "Couldn't fetch quotes: \(errorCode)")
     }
    
    func goToDetailSuccess(_ result: Result) {
        router?.pushToDynamoDetail(with: result)
    }
    
    func goToDetailFailure() {
        
    }
    
    
}
