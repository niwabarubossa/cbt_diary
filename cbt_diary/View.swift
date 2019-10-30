//
//  View.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class View: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    // Storyboardから利用する際に使用される
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    // 上記どちらのinitからも使用される共通関数で、xibファイルを呼び出す。
    func loadNib() {
        // 第1引数のnameには、xibファイル名
        // ownerはself固定
        // optionsはここではnil
        let view = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
