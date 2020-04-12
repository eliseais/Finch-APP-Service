//
//  ViewController.swift
//  collectionTest
//
//  Created by elisa on 07.04.2020.
//  Copyright © 2020 elisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var my_collection: UICollectionView!
    @IBOutlet var my_table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == my_collection {
            return 5
        }
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = my_collection.dequeueReusableCell(withReuseIdentifier: "my_cell", for: indexPath) as! CollectionViewCell
        
        cell.cellView.layer.cornerRadius = 15
        cell.cellView.clipsToBounds = true
        
        // рандомная картинка из двух
        let rand = Int.random(in: 0 ... 1)
        if rand == 1 {
            cell.cellBackImage.image = UIImage(named: "manul")
        } else {
            cell.cellBackImage.image = UIImage(named: "mayon")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = my_table.dequeueReusableCell(withIdentifier: "table_cell", for: indexPath) as! TableViewCell
        
        return cell
    }
    
}

