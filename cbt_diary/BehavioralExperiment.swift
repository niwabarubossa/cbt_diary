//
//  BehavioralExperiment.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

@IBDesignable
class BehavioralExperiment: UIView {
    
    @IBOutlet weak var behaviorLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        setBehaviorLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
        setBehaviorLabel()
    }
    
    func loadNib() {
        let view = Bundle.main.loadNibNamed("BehavioralExperiment", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func setBehaviorLabel() {
        self.behaviorLabel.numberOfLines = 0
    }
}

@IBDesignable
class CustomLabel: UILabel {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
        }
    }
}
