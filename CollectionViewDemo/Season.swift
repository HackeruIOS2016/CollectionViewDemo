//
//  Season.swift
//  CollectionViewDemo
//
//  Created by HackerU on 02/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class Season {
    let image:UIImage
    let title:String
    
    init(image:String, title:String){
        self.image = UIImage(named: image)!
        self.title = title
    }
}
