//
//  KeepRecordingPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/07.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class KeepRecordingPageViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "BehavioralExperimentCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BehavioralExperimentCellCollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // 横スクロール
        collectionView.collectionViewLayout = layout
        collectionView.isPagingEnabled = true
        layout.itemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

extension KeepRecordingPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BehavioralExperimentCellCollectionViewCell", for: indexPath)
        return cell
    }
}
