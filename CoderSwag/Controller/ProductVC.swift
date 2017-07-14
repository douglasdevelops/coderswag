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
    
    @IBOutlet weak var cvProducts: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        cvProducts.dataSource = self
        cvProducts.delegate = self
        
        cvProducts.reloadData()
        
    }

    func InitializeProducts(forCategory category: Category) {
        Products = DataService.instance.GetProductsByProductType(forProductType: category.Title )
        
        navigationItem.title = String(describing: category.Title)
    }

}
