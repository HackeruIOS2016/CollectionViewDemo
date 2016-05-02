//
//  SeasonCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by HackerU on 02/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class SeasonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var data:WallPaper?{
        didSet{
            imageView.image = data?.image
        }
    }
    

}
