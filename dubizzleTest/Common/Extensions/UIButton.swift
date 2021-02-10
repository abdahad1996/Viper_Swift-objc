 
import UIKit

extension UIButton {
    
    convenience public init(title: String, titleColor: UIColor, font: UIFont = .systemFont(ofSize: 14), backgroundColor: UIColor = .clear, target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        
        self.backgroundColor = backgroundColor
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
    }
    
    
    convenience public init(image: UIImage, tintColor: UIColor? = nil, target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)
        if tintColor == nil {
            setImage(image, for: .normal)
        } else {
            setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = tintColor
        }
        
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
    }
    
    convenience public init( target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
    }
    
    func buttonBorder(withRadius radius: CGFloat, width: CGFloat, color:UIColor? = nil) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = color?.cgColor
    }

}

class UsitUIButton: UIButton {
    
    var text: String?
    override func awakeFromNib() {
        isExclusiveTouch = true
    }
    
    func unradius() {
        self.layer.cornerRadius = 0
        layer.masksToBounds = true
        clipsToBounds = true
    }
    func radius() {
        layoutIfNeeded()
        
        layer.cornerRadius = frame.height / 2
        layer.masksToBounds = true
        clipsToBounds = true
    }
    func radius(_ radius: CGFloat) {
        layoutIfNeeded()
        layer.cornerRadius = radius
        layer.masksToBounds = true
        clipsToBounds = true
         
    }
    func border(borderColor: CGColor, borderWidth: CGFloat) {
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = true
    }
    func showLoading() {
        
        // Disable button.
        self.isEnabled = false
        
        // Store text and empty.
        self.text = self.titleLabel?.text
        self.setTitle("", for: UIControl.State.normal)
        
        // Create and show loading.
        let loadingIndicator = UIActivityIndicatorView()
        loadingIndicator.center = CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.startAnimating()
        //loadingIndicator.color = UsitColors.usitOrange
        loadingIndicator.color = UIColor.black
        loadingIndicator.autoresizingMask = [.flexibleRightMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleTopMargin]
        loadingIndicator.tag = 2241234
        self.addSubview(loadingIndicator)
    }
    func hideLoading() {
        // Enable button.
        self.isEnabled = true
        
        // Remove loading indicator if there is one.
        if let loadingIndicator = self.viewWithTag(2241234) {
            loadingIndicator.removeFromSuperview()
        }
        
        // Set original text back.
        self.setTitle(self.text, for: UIControl.State.normal)
    }
    func backgroundCheckedAnimation() {
        // Use UIBezierPath as an easy way to create the CGPath for the layer.
        // The path should be the entire circle.
        let circlePath = UIBezierPath(
            arcCenter: CGPoint(x: frame.width / 2, y: frame.height / 2),
            radius: (bounds.size.width) / 2,
            startAngle: CGFloat(-M_PI_2),
            endAngle: CGFloat((M_PI * 2.0) - M_PI_2),
            clockwise: true
        )
        
        // Setup the CAShapeLayer with the path, colors, and line width
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
//        circleLayer.strokeColor = UsitColors.usitOrange.cgColor
        
        /*
         circleLayer.strokeColor = UIColor(red: 104 / 255.0,
         green: 204 / 255.0,
         blue: 77 / 255.0,
         alpha: 1.0).CGColor
         */
        circleLayer.lineWidth = 3.0
        
        // Don't draw the circle initially
        circleLayer.strokeEnd = 0.0
        
        // Add the circleLayer to the view's layer's sublayers
        layer.addSublayer(circleLayer)
        
        // We want to animate the strokeEnd property of the circleLayer
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        // Set the animation duration appropriately
        animation.duration = 1.0
        
        // Animate from 0 (no circle) to 1 (full circle)
        animation.fromValue = 0
        animation.toValue = 1
        
        // Do a linear animation (i.e. the speed of the animation stays the same)
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        
        // Set the circleLayer's strokeEnd property to 1.0 now so that it's the
        // right value when the animation ends.
        circleLayer.strokeEnd = 1.0
        
        // Do the actual animation
        circleLayer.add(animation, forKey: "animateCircle")
    }
}
