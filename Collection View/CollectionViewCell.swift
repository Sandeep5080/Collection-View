//
//  CollectionViewCell.swift
//  Collection View
//
//  Created by Sandeep Reddy on 16/01/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String) {
        countryNameLabel.text = countryName
    }
    }

