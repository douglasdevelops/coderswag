//
//  CategoryCellTableViewCell.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //MARK: IBOutlets
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblCategoryLabel: UILabel!
    
    //MARK: User Functions
    func ConfigureCell(forCategory givenCategory: Category) {
        lblCategoryLabel.text = String(describing: givenCategory.Title)
        imgBackground.image = UIImage(named: givenCategory.ImageName)
        
        switch givenCategory.Title {
        case .DigitalContent:
            break
        case .Hats:
            break
        case .Hoodies:
            break
        case .Shirts:
            break
        default:
            break
        }
    }
    
}
