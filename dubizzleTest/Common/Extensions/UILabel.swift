 

import UIKit

extension UILabel {
    convenience public init(text: String? = nil, font: UIFont? = UIFont.systemFont(ofSize: 14), textColor: UIColor = .black, textAlignment: NSTextAlignment = .left, numberOfLines: Int = 1) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
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
        
        self.numberOfLines = numberOfLines
        
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
