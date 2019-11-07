//
//  BehavioralExperimentCellCollectionViewCell.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/07.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class BehavioralExperimentCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ExperimentalValue: UILabel!
    @IBAction func UnExpectedValuePlus(_ sender: Any) {
        let experimental_value = NumberFormatter().number(from: ExperimentalValue.text!) as! Int
        ExperimentalValue.text = String(experimental_value + 1)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        ExperimentalValue.text = "0"
    }

}
