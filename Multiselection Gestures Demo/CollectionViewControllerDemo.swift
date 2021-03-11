//
//  CollectionViewControllerDemo.swift
//  Multiselection Gestures Demo
//
//  Created by Muhammad Abdullah Al Mamun on 11/3/21.
//  Copyright © 2021 Amit Rai. All rights reserved.
//

//if canvasView.isFirstResponder{
//    canvasView.resignFirstResponder()
//}else{
//    canvasView.becomeFirstResponder()
//}

import UIKit

class CollectionViewControllerDemo: UICollectionViewController {


    var data: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = editButtonItem
        if #available(iOS 14.0, *) {
            collectionView.allowsMultipleSelectionDuringEditing = true
        } else {
            // Fallback on earlier versions
        }
        importingDataInTableView()
     }
    
    func importingDataInTableView() {
        data = [
            Data(number: 1),
            Data(number: 2),
            Data(number: 3),
            Data(number: 4),
            Data(number: 5),
            Data(number: 6),
            Data(number: 7),
            Data(number: 8),
            Data(number: 9),
            Data(number: 10),
            Data(number: 11),
            Data(number: 12),
            Data(number: 13),
            Data(number: 14),
            Data(number: 15),
            Data(number: 16),
        ]

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
        
    }
    
//    override func collectionView(_ tableView: UICollectionView, cellForRowAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: IndexPath)
//        cell?.textLabel?.text = "\(data[indexPath.row].number)"
//        return cell!
//    }
//
//    override func collectionView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    override func collectionView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
//        self.setEditing(true, animated: true)
//    }
//
//    override func collectionViewDidEndMultipleSelectionInteraction(_ collectionView: UICollectionView) {
//        print("\(#function)")
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, didSelectRowAt indexPath: IndexPath) {
//        if tableView.isEditing{
//            print("is editing:", indexPath.row)
//        }else{
//            print("notediting:", indexPath.row)
//        }
//
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, didDeselectRowAt indexPath: IndexPath) {
//        print("deselect method")
//    }
    
}
