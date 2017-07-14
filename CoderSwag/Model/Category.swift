//
//  Category.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import Foundation

public class Category {
    
    private(set) public var Title: ProductType
    
    private(set) public var ImageName: String
    
    init(Title:ProductType, ImageName: String) {
        self.Title = Title
        self.ImageName = ImageName
    }
    
}
