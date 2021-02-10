 

import UIKit
extension String {
    
    func AddattributeText() -> NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }
}

extension NSMutableAttributedString {
    
    static func + (left: NSMutableAttributedString, right: NSMutableAttributedString) -> NSMutableAttributedString {
        left.append(right)
        return left
    }
    
    func font(_ font: UIFont) -> Self {
        addAttribute(.font, value: font, range: NSMakeRange(0, string.count))
        return self
    }
    
    func textColor(_ color: UIColor) -> Self {
        addAttribute(.foregroundColor, value: color, range: NSMakeRange(0, string.count))
        return self
    }
    
    func backgroundColor(_ color: UIColor) -> Self {
        addAttribute(.backgroundColor, value: color, range: NSMakeRange(0, string.count))
        return self
    }
    
    func baseLineOffset(_ offset: CGFloat) -> Self {
        addAttribute(.baselineOffset, value: offset, range: NSMakeRange(0, string.count))
        return self
    }
    
    func underline(color: UIColor, style: NSUnderlineStyle) -> Self {
        let attributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.underlineStyle : style.rawValue,
            NSAttributedString.Key.underlineColor : color
        ]
        addAttributes(attributes, range: NSMakeRange(0, string.count))
        return self
    }
    
    func spacing(_ spacing: CGFloat) -> Self {
        addAttribute(.kern, value: spacing, range: NSMakeRange(0, string.count))
        return self
    }
}



