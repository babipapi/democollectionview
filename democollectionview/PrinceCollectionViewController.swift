//
//  PrinceCollectionViewController.swift
//  democollectionview
//
//  Created by Daniel on 2019/8/8.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PrinceCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let width = (collectionView.bounds.width - 1 * 2) / 3
        let flowlayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowlayout?.itemSize = CGSize(width: width, height: width)
        flowlayout?.estimatedItemSize = .zero
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 30
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"\( PrinceCollectionViewCell.self)", for: indexPath) as! PrinceCollectionViewCell
        
        for i in 0...29 {
            if indexPath.item == i {
            cell.imageView.image = UIImage(named: "pic\(i)")
        }
        /*if indexPath.item == 0 {
            cell.imageView.image = UIImage(named: "pic0")
        } else if indexPath.item == 1 {
            cell.imageView.image = UIImage(named: "pic1")
        } else if indexPath.item == 2 {
            cell.imageView.image = UIImage(named: "pic2")
        }*/
        
        
        // Configure the cell
        
        
            }
        return cell
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */


}



}
