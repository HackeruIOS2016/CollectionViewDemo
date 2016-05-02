//
//  HeaderView.swift
//  CollectionViewDemo
//
//  Created by HackerU on 02/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    @IBOutlet weak var imageView: UIImageView!
    
    
    var data:UIImage?{
        didSet{
            imageView.image = data
        }
    }
}
