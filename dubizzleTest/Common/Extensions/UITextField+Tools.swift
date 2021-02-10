 

import UIKit

extension UITextField {

    public convenience init(placeholder: String,withColor color: UIColor) {
        self.init()
        self.placeholder = placeholder
        attributedPlaceholder =  NSAttributedString(string:placeholder, attributes:[NSAttributedString.Key.foregroundColor: color])
    }
    enum ViewType {
        case left, right
    }
    
    // (1) add general view to either right or left of view
    private func setView(_ type: ViewType, with view: UIView) {
        if type == ViewType.left {
            leftView = view
            leftViewMode = .always
        } else if type == .right {
            rightView = view
            rightViewMode = .always

        }
    }
    // add text to either right or left of view
    @discardableResult
    func setView(_ view: ViewType, title: String, space: CGFloat = 0) -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: frame.height))
        button.setTitle(title, for: UIControl.State())
        button.setTitleColor(.red, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 4, left: space, bottom: 4, right: space)
        button.sizeToFit()
        setView(view, with: button)
        return button
    }
    // add image to either right or left of view with spacing and action and tintcolor , spacing too

    @discardableResult
    func setView(_ view: ViewType, image: UIImage, width: CGFloat = 50 , height:CGFloat = 50,space: CGFloat = 0,target: Any? = nil, action: Selector? = nil,tintColor: UIColor? = nil) -> UIButton {

        let button = UIButton(frame: CGRect(x: space, y: 0, width: width, height: height))

        button.imageView!.contentMode = .scaleAspectFit
        button.imageView!.clipsToBounds = true
        if let action = action {
            button.addTarget(target, action: action, for: .touchUpInside)
        }

        if tintColor == nil {
            button.setBackgroundImage(image, for: .normal)

        } else {
            button.setBackgroundImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = tintColor

        }
        let contentView = UIView()
        contentView.addSubview(button)
        
        contentView.frame = .init(x: 0, y: 0, width: width, height: height)
      
        
        setView(view, with: contentView)
        return button
    }
    func setView(_ view: ViewType, space: CGFloat) -> UIView {
        let spaceView = UIView(frame: CGRect(x: 0, y: 0, width: space, height: 1))
        setView(view, with: spaceView)
        return spaceView
    }
    
    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
   // Check if text field is empty.
    var isEmpty: Bool {
        return text?.isEmpty == true
    }
    
    ///  Return text with no spaces or new lines in beginning and end.
    var trimmedText: String? {
        return text?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var hasValidEmail: Bool {
        // http://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
        return text!.range(of: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}",
                           options: String.CompareOptions.regularExpression,
                           range: nil, locale: nil) != nil
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
        
//        self.t.numberOfLines = numberOfLines
        
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
