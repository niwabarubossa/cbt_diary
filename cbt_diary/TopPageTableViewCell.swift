//
//  TopPageTableViewCell.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/06.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class TopPageTableViewCell: UITableViewCell {

    @IBOutlet weak var sheetIcon: UIImageView!
    @IBOutlet weak var SheetNameLabel: UILabel!
    @IBOutlet weak var SheetTagFirst: UILabel!
    @IBOutlet weak var SheetTagSecond: UILabel!
    @IBOutlet weak var SheetTagThird: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(model: SheetModel) {
        SheetNameLabel.text = model.title

        if let text = model.subTitle {
            SheetTagFirst.text = model.subTitle
        }
        let tagColor = UIColor(red: 0, green: 0, blue: 200, alpha: 0.5)
//        let tagColor = UIColor.red
        if(model.tagArray.count > 0){
            for i in 0..<model.tagArray.count {
                if(i==0){
                    SheetTagFirst.backgroundColor = tagColor
                    SheetTagFirst.text = model.tagArray[i];
                }else if (i == 1){
                    SheetTagSecond.backgroundColor = tagColor
                    SheetTagSecond.text = model.tagArray[i];
                }else{
                    SheetTagThird.backgroundColor = tagColor
                    SheetTagThird.text = model.tagArray[i];
                }
                
            }
            
        }
    }

}
