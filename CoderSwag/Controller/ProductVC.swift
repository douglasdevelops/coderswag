//
//  ProductVC.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    
    private (set) public var Products: [Product] = [Product]()
    
    //MARK: IBOutlets
    @IBOutlet weak var cvProducts: UICollectionView!
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        cvProducts.dataSource = self
        cvProducts.delegate = self
        cvProducts.reloadData()
        
    }

    //MARK: User Functions
    func InitializeProducts(forCategory category: Category) {
        Products = DataService.instance.GetProductsByProductType(forProductType: category.Title )
        navigationItem.title = String(describing: category.Title)
    }

}
