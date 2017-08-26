//
//  DataService.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import Foundation

public enum ProductType {
    case Shirts
    case Hats
    case Hoodies
    case DigitalContent
}

class DataService {
    static let instance = DataService()
    
    private let hats = [
        Product(ImageName: "hat01.png", Description: "Devslopes Logo Graphic Beanie", Price: "$25.00"),
        Product(ImageName: "hat02.png", Description: "Devslopes Logo Hat Black", Price: "$25.00"),
        Product(ImageName: "hat03.png", Description: "Devslopes Logo Hat White", Price: "$25.00"),
        Product(ImageName: "hat04.png", Description: "Devslopes Logo Snapback", Price: "$25.00")
    ]
    
    private let hoodies = [
        Product(ImageName: "hoodie01.png", Description: "Devslopes Logo Hoodie Grey", Price: "$32.00"),
        Product(ImageName: "hoodie02.png", Description: "Devslopes Logo Hoodie Red", Price: "$32.00"),
        Product(ImageName: "hoodie03.png", Description: "Devslopes Logo Hoodie Grey", Price: "$32.00"),
        Product(ImageName: "hoodie04.png", Description: "Devslopes Logo Hoodie Black", Price: "$32.00")
    ]
    
    private let shirts = [Product(ImageName: "shirt01.png", Description: "Devslopes Logo Shirt Black", Price: "$24.95"),
                          Product(ImageName: "shirt02.png", Description: "Devslopes Badge Shirt Light Grey", Price: "$24.95"),
                          Product(ImageName: "shirt03.png", Description: "Devslopes Logo Logo Shirt Red", Price: "$25.00"),
                          Product(ImageName: "shirt04.png", Description: "Hustle Delegate Grey", Price: "$25.00"),
                          Product(ImageName: "shirt05.png", Description: "Kickflip Studios Black", Price: "$20.00")
    ]
    
    private let categories = [
        Category(Title: .Shirts, ImageName: "shirts.png"),
        Category(Title: .Hats, ImageName: "hats.png"),
        Category(Title: .Hoodies, ImageName: "hoodies.png"),
        Category(Title: .DigitalContent, ImageName: "digital.png")
    ]
    
    private let digitalGoods = [
        Product(ImageName: "book.jpg", Description: "Learn iOS 10 in Swift 3", Price: "$59.99")
    ]
    
    func GetCategories() -> [Category] {
        return categories
    }
    
    func GetProductsByProductType(forProductType productType: ProductType) -> [Product] {
        switch productType {
        case .DigitalContent:
            return digitalGoods
        case .Hats:
            return hats
        case .Hoodies:
            return hoodies
        case .Shirts:
            return shirts
        default:
            return [Product]()
        }
    }
}
