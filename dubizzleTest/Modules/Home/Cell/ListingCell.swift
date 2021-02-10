//
//  HomeCell.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import Foundation
import UIKit
class ListingCell : BaseCell {
   lazy var img: AspectFitImageView = {
        let i = AspectFitImageView(image: #imageLiteral(resourceName: "star"))
        i.constrainWidth(50)
        return i
    }()
    lazy var rightIcon: AspectFitImageView = {
        let i = AspectFitImageView(image: #imageLiteral(resourceName: "icons8-right-arrow-64"))
        i.constrainWidth(30)
        return i
    }()
    lazy var name:UILabel = {
        let l = UILabel(text: "name ", font: UIFont.boldSystemFont(ofSize: 20), textColor: MyColors.MainPage().PrimaryLabel, textAlignment: .left, numberOfLines: 1)
        return l
    }()
    lazy var price:UILabel = {
        let l = UILabel(text: "price", font: UIFont.systemFont(ofSize: 16), textColor: MyColors.MainPage().SecondaryLabel, textAlignment: .left, numberOfLines: 1)
        return l
    }()
 
    override func setupViews() {
        self.backgroundColor = MyColors.MainPage().backgroundColor
        hstack(img,
               stack(name, price, spacing: 4),rightIcon,
               spacing: 16, alignment: .center).withMargins(.allSides(16))
    }

    func configure(usingViewModel viewModel: ResultViewModel) {
        self.img.loadImage(urlString: viewModel.image)
        self.name.text = "name : \(viewModel.title)"
        self.price.text = "price : \(viewModel.price)"

    }
}
