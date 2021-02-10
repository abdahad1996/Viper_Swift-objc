 
import UIKit

enum ColorConstant: String {
    case success = "#009900"
    case failure = "#E50000"
}
extension UIColor {
    static public func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

struct MyColors {
    
 
    struct MainPage {
        let backgroundColor =  UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let PrimaryLabel =  UIColor(red: 0.094, green: 0.784, blue: 0.435, alpha: 1)
        let SecondaryLabel =  UIColor(red: 0.094, green: 0.784, blue: 0.435, alpha: 1)
    }
    struct DetailPage {
        let backgroundColor =  UIColor(red: 0.22, green: 0.906, blue: 0.188, alpha: 1)
        let PrimaryLabel =  UIColor(red: 0.094, green: 0.784, blue: 0.435, alpha: 1)
        let SecondaryLabel =  UIColor(red: 0.094, green: 0.784, blue: 0.435, alpha: 1)
    }

}
