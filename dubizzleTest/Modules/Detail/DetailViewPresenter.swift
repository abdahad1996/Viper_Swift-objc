 
import Foundation
 import UIKit
 
 // MARK: View Input (View -> Presenter)
 protocol ViewToPresenterDetailViewProtocol: class {
     
     var view: PresenterToViewDetailViewProtocol? { get set }
     var interactor: PresenterToInteractorDetailViewProtocol? { get set }
     var router: PresenterToRouterDetailViewProtocol? { get set }

     func viewDidLoad()
     
 }
class DetailViewPresenter: ViewToPresenterDetailViewProtocol {

    // MARK: Properties
    weak var view: PresenterToViewDetailViewProtocol?
    var interactor: PresenterToInteractorDetailViewProtocol?
    var router: PresenterToRouterDetailViewProtocol?
    
    init(view: PresenterToViewDetailViewProtocol
         , router: PresenterToRouterDetailViewProtocol, interactor: PresenterToInteractorDetailViewProtocol
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        interactor?.getImageFromURL()
    }
    
}

 // MARK: Interactor Output (Interactor -> Presenter)
 protocol InteractorToPresenterDetailViewProtocol: class {
     
    func getImageFromURLSuccess(result: Result, image: UIImage)
     func getImageFromURLFailure(result: Result)
     
 }
extension DetailViewPresenter: InteractorToPresenterDetailViewProtocol {
    
    func getImageFromURLSuccess(result: Result, image: UIImage) {
        print("Presenter receives the result from Interactor after it's done its job.")
        view?.onGetImageFromURLSuccess(result.name, image: image)
//        view?.onGetImageFromURLSuccess(quote.quote!, character: quote.character!, image: ImageDataService.shared.convertToUIImage(from: data!))
        
    }
    
    func getImageFromURLFailure(result: Result) {
        print("Presenter receives the result from Interactor after it's done its job.")
//        view?.onGetImageFromURLFailure(result!, character: quote.character!)
        
        view?.onGetImageFromURLFailure(result.name)
    }
    
}
