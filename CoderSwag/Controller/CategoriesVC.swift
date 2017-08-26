//
//  ViewController.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var tvCategoriesTableView: UITableView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvCategoriesTableView.delegate = self
        tvCategoriesTableView.dataSource = self
        tvCategoriesTableView.reloadData()
    }
    
    //MARK: - User Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ProductsVC = segue.destination as? ProductVC {
            assert(sender as? Category != nil)
            ProductsVC.InitializeProducts(forCategory: sender as! Category)
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
        }
    }
}

