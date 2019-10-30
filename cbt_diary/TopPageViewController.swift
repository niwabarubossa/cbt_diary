//
//  TopPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class TopPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

@IBDesignable
class NewCustomLabel: UILabel {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
        }
    }
}
