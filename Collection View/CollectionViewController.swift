//
//  CollectionViewController.swift
//  Collection View
//
//  Created by Sandeep Reddy on 16/01/23.
//

import UIKit



class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["India", "Brazil", "USA", "Japan", "canada", "United Kingdom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return dataSource.count
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell =  UICollectionViewCell()
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as?  CollectionViewCell {
            countryCell.configure(with: dataSource[indexPath.row])
            cell = countryCell
        }
        return cell
        
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected country: \(dataSource[indexPath.row])" )
    }
}
