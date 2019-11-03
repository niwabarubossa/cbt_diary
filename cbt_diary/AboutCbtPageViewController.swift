//
//  AboutCbtPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class AboutCbtPageViewController: UIViewController, UICollectionViewDataSource {
    
    let models = Model.createModels()

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self as! UICollectionViewDataSource
        
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        // セルの大きさを設定
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: collectionView.frame.width, height: 100)
        collectionView.collectionViewLayout = layout
        print("\(models)")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        
        if let cell = cell as? CustomCell {
            cell.setupCell(model: models[indexPath.row])
        }
        
        return cell
    }
    
}
