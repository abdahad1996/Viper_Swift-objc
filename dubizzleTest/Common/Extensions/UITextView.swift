 

import Foundation
import UIKit

extension UITextView {
    convenience public init(text: String?, font: UIFont? = UIFont.systemFont(ofSize: 14), textColor: UIColor = .black, textAlignment: NSTextAlignment = .left) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
    }
    func textViewBorder(withRadius radius: CGFloat, width: CGFloat, color:UIColor) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        self.clipsToBounds = true
    }
    
    func textViewBackgroundColor(withColor color:UIColor) {
        self.backgroundColor = color
    }
    func setAttributedText(
        primaryString: String,
        textColor: UIColor,
        font: UIFont,
        secondaryString: String = "",
        secondaryTextColor: UIColor? = nil,
        secondaryFont: UIFont? = nil,
        highlightedText: String? = nil,
        textAlignment: NSTextAlignment = .center,
        numberOfLines: Int = 0,
        lineHeightMultiple: CGFloat = 1) {
        
        var textToBeHighlighted = ""
        var completeString: String!
        
//        self.numberOfLines = numberOfLines
        
        if let highlightedText = highlightedText {
            textToBeHighlighted = highlightedText
            completeString = primaryString
        } else {
            if !secondaryString.isEmpty {
                textToBeHighlighted = secondaryString
                completeString = "\(primaryString) \(secondaryString)"
            } else {
                completeString = primaryString
            }
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = textAlignment
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let completeAttributedString = NSMutableAttributedString(
            string: completeString, attributes: [
                .font: font,
                .foregroundColor: textColor,
                .paragraphStyle: paragraphStyle
            ]
        )
        
        let secondStringAttribute: [NSAttributedString.Key: Any] = [
            .font: secondaryFont ?? font,
            .foregroundColor: secondaryTextColor ?? textColor,
            .paragraphStyle: paragraphStyle
        ]
        
        let range = (completeString as NSString).range(of: textToBeHighlighted)
        
        completeAttributedString.addAttributes(secondStringAttribute, range: range)
        
        self.attributedText = completeAttributedString
        
    }
}
