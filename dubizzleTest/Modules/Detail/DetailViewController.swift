//
//  DetailViewController.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewDetailViewProtocol: class {
    
    func onGetImageFromURLSuccess(_ quote: String,  image: UIImage)
    func onGetImageFromURLFailure(_ quote: String)
}
class DetailViewController:UIViewController {
    // MARK: - Properties
    lazy var detailImage:  AspectFitImageView = {
        let i = AspectFitImageView(image: #imageLiteral(resourceName: "star"))
 
        return i
         
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center

        return label
    }()
    
    var result:Result?
    var presenter:ViewToPresenterDetailViewProtocol?
    
    // MARK: - LifeCycle
     override func viewDidLoad() {
        self.view.backgroundColor = .white
        setUpUI()
        presenter?.viewDidLoad()

    }
    
    func setUpUI(){
//        detailImage.loadImage(urlString: self.result?.imageUrlsThumbnails.first ?? "")
//        nameLabel.text = self.result?.name
        self.view.addSubview(nameLabel)
        self.view.addSubview(detailImage)

        
        let widthHeightConstant = self.view.frame.width * 0.8
        detailImage.translatesAutoresizingMaskIntoConstraints = false
        detailImage.widthAnchor.constraint(equalToConstant: widthHeightConstant)
            .isActive = true
        detailImage.heightAnchor.constraint(equalToConstant: widthHeightConstant)
            .isActive = true
        detailImage.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
            .isActive = true
        detailImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            .isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor)
            .isActive = true
        nameLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor)
            .isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            .isActive = true
        
     }
}

extension DetailViewController:PresenterToViewDetailViewProtocol{
    func onGetImageFromURLSuccess(_ quote: String, image: UIImage) {
        print("View receives the response from Presenter and updates itself.")
 
        detailImage.image = image
        nameLabel.text = quote
        self.navigationItem.title = quote
    }
    
    func onGetImageFromURLFailure(_ quote: String) {
        print("View receives the response from Presenter and updates itself.")

//        detailImage.loadImage(urlString: self.result?.imageUrlsThumbnails.first ?? "")
        nameLabel.text = quote
    }
    
     
}
