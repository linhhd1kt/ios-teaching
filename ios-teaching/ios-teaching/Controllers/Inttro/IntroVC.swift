//
//  IntroVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/7/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit
import Alamofire

class IntroVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayData = [(IntroItem)]()
    let cellId = "IntroCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item  = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .large)
        let item1 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item2 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .large)
        let item3 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item4 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item5 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item6 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item7 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        let item8 = IntroItem(titleName: "Bất động sản", image: #imageLiteral(resourceName: "ic_default_user"), size: .small)
        
        arrayData.append(item)
        arrayData.append(item1)
        arrayData.append(item2)
        arrayData.append(item3)
        arrayData.append(item4)
        arrayData.append(item5)
        arrayData.append(item6)
        arrayData.append(item7)
        arrayData.append(item8)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
    
    @IBAction func gotoMarket(_ sender: Any) {
        let newVC = NotificationVC(nibName: NotificationVC.className, bundle: nil)
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
}

extension IntroVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! IntroCell
        cell.setup(arrayData[indexPath.item])
        
        return cell
    }
}

extension IntroVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionSize = collectionView.frame.size
        let size = CGSize(width: collectionSize.width / 2 - 2, height: collectionSize.height / 4)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

