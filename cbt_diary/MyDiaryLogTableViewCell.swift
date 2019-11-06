//
//  MyDiaryLogTableViewCell.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/06.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class MyDiaryLogTableViewCell: UITableViewCell {

    @IBOutlet weak var MonthLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var MyDiaryLogImage: UIImageView!
    @IBOutlet weak var MyDiaryLogName: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
