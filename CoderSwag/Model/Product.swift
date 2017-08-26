//
//  Product.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var ImageName: String
    private(set) public var Description: String
    private(set) public var Price: String
    
    init(ImageName: String, Description: String, Price: String) {
        self.Description = Description
        self.ImageName = ImageName
        self.Price = Price
    }
}
