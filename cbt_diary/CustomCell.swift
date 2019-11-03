//
//  CustomCell.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/03.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(model: Model) {
        title.text = model.title
        
        if let text = model.subTitle {
            subTitle.text = text
        }
        
        self.backgroundColor = .lightGray
    }

}
