//
//  TableView.swift
//  CoderSwag
//
//  Created by Douglas Spencer on 7/13/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.GetCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tvCategoriesTableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.ConfigureCell(forCategory: DataService.instance.GetCategories()[indexPath.row])
            return cell
        }
        
        return CategoryCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Category = DataService.instance.GetCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: Category)
    }
}
