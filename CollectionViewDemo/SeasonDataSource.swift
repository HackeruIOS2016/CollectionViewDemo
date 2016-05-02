//
//  ViewController.swift
//  TableViewsDemo
//
//  Created by Tomer Buzaglo on 8/6/15.
//  Copyright (c) 2015 iTomerBu. All rights reserved.
//

import UIKit


class DataSource {

var data: [Int:[WallPaper]]
    
 var arr = [WallPaper]()
 var seasons = [Season]()
    
    
    init (){
        
        let fall = Season(image: "Fall", title: "Fall")
        let spring = Season(image: "Spring", title: "Spring")
        let winter = Season(image: "Winter", title: "Winter")
        let summer = Season(image: "Summer", title: "Summer")
        
        seasons += [winter, spring, summer, fall]
        
        
        let dec = WallPaper(title: "December", subTitle: "Winter", image: "12-December")
        let jan = WallPaper(title: "January", subTitle: "Winter", image: "01-January")
        let feb = WallPaper(title: "February", subTitle: "Winter", image: "02-February")
        let march = WallPaper(title: "March", subTitle: "Spring", image: "03-March")
        let apr = WallPaper(title: "April", subTitle: "Spring", image: "04-April")
        let may = WallPaper(title: "May", subTitle: "Spring", image:
            "05-May")
        let june = WallPaper(title: "June", subTitle: "Summer", image: "06-June")
        let july = WallPaper(title: "July", subTitle: "Summer", image: "07-July")
        let aug = WallPaper(title: "August", subTitle: "Summer", image:
            "08-August")
        let sept = WallPaper(title: "September", subTitle: "Fall", image: "09-September")
        let oct = WallPaper(title: "October", subTitle: "Fall", image: "10-October")
        let nov = WallPaper(title: "November", subTitle: "Fall", image:
            "11-November")

        
        arr += [jan, feb, march, apr, may, june, july, aug, sept, oct, nov, dec]
        
        data = DataSource.initData()
//        
//        arr += data[0]!
//        arr += data[1]!
//        arr += data[2]!
//        arr += data[3]!
    }
    
  static  func initData()->[Int:[WallPaper]]{
        var dict = [Int:[WallPaper]]()
        
        let dec = WallPaper(title: "December", subTitle: "Winter", image: "12-December")
        let jan = WallPaper(title: "January", subTitle: "Winter", image: "01-January")
        let feb = WallPaper(title: "February", subTitle: "Winter", image: "02-February")
        
        dict[0] = [dec, jan, feb]
        
        let march = WallPaper(title: "March", subTitle: "Spring", image: "03-March")
        let apr = WallPaper(title: "April", subTitle: "Spring", image: "04-April")
        let may = WallPaper(title: "May", subTitle: "Spring", image:
            "05-May")
        
        
        dict[1] = [march, apr, may]
        
        let june = WallPaper(title: "June", subTitle: "Summer", image: "06-June")
        let july = WallPaper(title: "July", subTitle: "Summer", image: "07-July")
        let aug = WallPaper(title: "August", subTitle: "Summer", image:
            "08-August")
        
        
        dict[2] = [june, july, aug]
        
        
        let sept = WallPaper(title: "September", subTitle: "Fall", image: "09-September")
        let oct = WallPaper(title: "October", subTitle: "Fall", image: "10-October")
        let nov = WallPaper(title: "November", subTitle: "Fall", image:
            "11-November")
        
        
        dict[3] = [sept, oct, nov]
        
        return dict
        }
}

