//
//  CategoryCellTableViewCell.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblCategoryLabel: UILabel!
    
    func ConfigureCell(forCategory givenCategory: Category) {
        lblCategoryLabel.text = String(describing: givenCategory.Title)
        imgBackground.image = UIImage(named: givenCategory.ImageName)
        
        
        switch givenCategory.Title {
        case .DigitalContent:
            break
        case .Hats:
            
//            while ( !imgBackground.isAnimating ) {
//                let animatedImages: [UIImage] = [
//                    UIImage(named: "hat01.png")!,
//                    UIImage(named: "hat02.png")!,
//                    UIImage(named: "hat03.png")!,
//                    UIImage(named: "hat04.png")!
//                ]
//
//                imgBackground.animationImages = animatedImages
//                imgBackground.animationDuration = 10.0
//                imgBackground.animationRepeatCount = 1
//                imgBackground.startAnimating()
//            }
            
            
            
            
            break
        case .Hoodies:
            break
        case .Shirts:
            
//            while ( !imgBackground.isAnimating) {
//                let animatedImages: [UIImage] = [
//                    UIImage(named: "shirt01.png")!,
//                    UIImage(named: "shirt02.png")!,
//                    UIImage(named: "shirt03.png")!,
//                    UIImage(named: "shirt04.png")!,
//                    UIImage(named: "shirt05.png")!
//                ]
//
//                imgBackground.animationImages = animatedImages
//                imgBackground.animationDuration = 10.0
//                imgBackground.animationRepeatCount = 1
//                imgBackground.startAnimating()
//            }
            
            break
        default:
            print("default")
        }
    }

}
