 

import Foundation
import UIKit
 
 // MARK: Router Input (Presenter -> Router)
 protocol PresenterToRouterDetailViewProtocol: class {
     
      
 }
class DetailViewRouter: PresenterToRouterDetailViewProtocol {
    
    var view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
}
