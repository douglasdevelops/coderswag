//
//  ProductCell.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    //MARK: IBOutlets
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgProductImage: UIImageView!
    
    //MARK:  User Functions
    func ConfigureCell(forProduct givenProduct: Product) {
        lblPrice.text = givenProduct.Price
        lblDescription.text = givenProduct.Description
        imgProductImage.image = UIImage(named: givenProduct.ImageName)
        self.reuseIdentifier = 
    }
}
