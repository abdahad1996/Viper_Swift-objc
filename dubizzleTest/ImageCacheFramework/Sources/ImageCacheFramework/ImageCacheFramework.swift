import Foundation
import UIKit

public typealias imageCompletion = ((UIImage?)->Void)
public class ImageCache {
    
    public static let shared : ImageCache = ImageCache()
    var lastURLUsedToLoadImage: String?
 
        var imageCache = NSCache<NSString, AnyObject>()
    
 
       
    

    open func loadImage(urlString: String,completion: @escaping imageCompletion) {
        lastURLUsedToLoadImage = urlString
 
        guard let url = URL(string: urlString) else { return }

        if let cachedImage = imageCache.object(forKey:url.absoluteString as NSString ) as? UIImage {
            //
            completion(cachedImage)
             return
                   }

 
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print("Failed to fetch post image:", err)
                completion(nil)

                return
            }

            if url.absoluteString != self.lastURLUsedToLoadImage {
                completion(nil)

                return
            }

            guard let imageData = data else {
                completion(nil)
                return }

            let photoImage = UIImage(data: imageData)

//            self.imageCache[url.absoluteString] = photoImage
            self.imageCache.setObject(photoImage!, forKey: url.absoluteString as NSString)

            DispatchQueue.main.async {
//                self.image = photoImage
                completion(photoImage)

            }

            }.resume()
    }
//    func loadImageFrom(urlString: String,
//                       success: @escaping (Data) -> (),
//                       failure: @escaping (Error) -> ()) {
//
//
//
//
//
//
//
//    }
}

