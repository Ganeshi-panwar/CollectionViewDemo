//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Mohit Mali on 15/09/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var array1 = ["Watch1","Watch2","Watch3","Watch4"]
    var array2  = [UIImage(imageLiteralResourceName: "1"),UIImage(imageLiteralResourceName: "2"),UIImage(imageLiteralResourceName: "3"),UIImage(imageLiteralResourceName: "4")]

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array1.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.labCollection.text = array1[indexPath.row]
        cell.imgCollection.image = array2[indexPath.row]
        return cell
    }


}

