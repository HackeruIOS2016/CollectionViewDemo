//
//  SeasonCollectionViewController.swift
//  CollectionViewDemo
//
//  Created by HackerU on 02/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit


class SeasonCollectionViewController: UICollectionViewController {

    let dataSource = DataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initLayout()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
 

        // Do any additional setup after loading the view.
    }

    func initLayout(){
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        
        let cellWidth = collectionView!.frame.size.width / 2 - 8
        
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
    }
 
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let row = indexPath.row
        let paper = dataSource.arr[row]
        
        performSegueWithIdentifier("MasterToDetail", sender: paper)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        let dest = segue.destinationViewController as! ViewController
        
        dest.data = sender as? WallPaper
    }
   

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return dataSource.arr.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("SeasonCell", forIndexPath: indexPath) as! SeasonCollectionViewCell
        
        let paper = dataSource.arr[indexPath.row]
        cell.data = paper
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
