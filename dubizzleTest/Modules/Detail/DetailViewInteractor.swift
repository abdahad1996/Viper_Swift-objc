 
 import Foundation
 import ImageCacheFramework
 
 // MARK: Interactor Input (Presenter -> Interactor)
 protocol PresenterToInteractorDetailViewProtocol: class {
    
    var presenter: InteractorToPresenterDetailViewProtocol? { get set }
    
    var result: Result? { get set }
    
    func getImageFromURL()
    
 }
 class DetailViewInteractor: PresenterToInteractorDetailViewProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterDetailViewProtocol?
    var result: Result?
    var service: ImageCache
    
    
    //    var database: CartDB
    
    init(service: ImageCache
         //         ,
         //         database: CartDB
    ){
        self.service = service
        //        self.database = database
    }
    func getImageFromURL() {
        print("Interactor receives the request from Presenter to get image data from the server.")
        guard let result = result else{
            return
        }
        service.loadImage(urlString: result.imageUrls.first ?? "") { (image) in
            if let img = image {
                self.presenter?.getImageFromURLSuccess(result: result, image: img)
            }else{
                self.presenter?.getImageFromURLFailure(result: result)
            }
        }
        
        
    }
    
    
 }
