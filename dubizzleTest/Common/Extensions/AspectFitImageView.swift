 

import UIKit
 import ImageCacheFramework
open class AspectFitImageView: UIImageView {
    
    convenience public init(image: UIImage? = nil, cornerRadius: CGFloat = 0) {
        self.init(image: image)
        self.layer.cornerRadius = cornerRadius
    }
    
    convenience public init() {
        self.init(image: nil)
    }
    
    override public init(image: UIImage?) {
        super.init(image: image)
        contentMode = .scaleAspectFit
        clipsToBounds = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    var lastURLUsedToLoadImage: String?
//    var imageCache = [String: UIImage]()

        var imageCache = NSCache<NSString, AnyObject>()
    

    func loadImage(urlString: String) {
        lastURLUsedToLoadImage = urlString

        self.image = nil

//        if let cachedImage = imageCache[urlString] {
//            self.image = cachedImage
//            return
//        }
        guard let url = URL(string: urlString) else { return }

        if let cachedImage = imageCache.object(forKey:url.absoluteString as NSString ) as? UIImage {
                       self.image = cachedImage
            return
                   }

 
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print("Failed to fetch post image:", err)
                return
            }

            if url.absoluteString != self.lastURLUsedToLoadImage {
                return
            }

            guard let imageData = data else { return }

            let photoImage = UIImage(data: imageData)

//            self.imageCache[url.absoluteString] = photoImage
            self.imageCache.setObject(photoImage!, forKey: url.absoluteString as NSString)

            DispatchQueue.main.async {
                self.image = photoImage
            }

            }.resume()
    }
    
//    let imageCache = NSCache<NSString, AnyObject>()
//
//       // MARK: - Properties
//
//       var imageURLString: String?
//
//    func downloadImageFrom(urlString: String, imageMode: UIView.ContentMode) {
//           guard let url = URL(string: urlString) else { return }
//           downloadImageFrom(url: url, imageMode: imageMode)
//       }
//
//    func downloadImageFrom(url: URL, imageMode: UIView.ContentMode) {
//           contentMode = imageMode
//           if let cachedImage = imageCache.object(forKey: url.absoluteString as NSString) as? UIImage {
//               self.image = cachedImage
//           } else {
//               URLSession.shared.dataTask(with: url) { data, response, error in
//                   guard let data = data, error == nil else { return }
//                   DispatchQueue.main.async {
//                       let imageToCache = UIImage(data: data)
//                       self.imageCache.setObject(imageToCache!, forKey: url.absoluteString as NSString)
//                       self.image = imageToCache
//                   }
//               }.resume()
//           }
//       }
//    
}

open class AspectFillImageView: UIImageView {
    convenience public init() {
        self.init(image: nil)
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    var lastURLUsedToLoadImage: String?
 
        var imageCache = NSCache<NSString, AnyObject>()
 
       
    func loadImage(urlString: String) {
        self.image = nil
        ImageCache.shared.loadImage(urlString: urlString, completion: { [weak self] (result) in
            guard let img = result else{
                self?.image = nil
                return
            }
            self?.image = img
        })
    }

//    func loadImage(urlString: String) {
//        lastURLUsedToLoadImage = urlString
//
//        self.image = nil
//
////        if let cachedImage = imageCache[urlString] {
////            self.image = cachedImage
////            return
////        }
//        guard let url = URL(string: urlString) else { return }
//
//        if let cachedImage = imageCache.object(forKey:url.absoluteString as NSString ) as? UIImage {
//                       self.image = cachedImage
//            return
//                   }
//
//
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//            if let err = err {
//                print("Failed to fetch post image:", err)
//                return
//            }
//
//            if url.absoluteString != self.lastURLUsedToLoadImage {
//                return
//            }
//
//            guard let imageData = data else { return }
//
//            let photoImage = UIImage(data: imageData)
//
////            self.imageCache[url.absoluteString] = photoImage
//            self.imageCache.setObject(photoImage!, forKey: url.absoluteString as NSString)
//
//            DispatchQueue.main.async {
//                self.image = photoImage
//            }
//
//            }.resume()
//    }
}
