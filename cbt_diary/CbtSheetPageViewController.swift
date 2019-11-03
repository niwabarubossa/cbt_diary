//
//  CbtSheetPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class CbtSheetPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let bundle = Bundle(for: type(of: self))
//        let nib = UINib(nibName: "", bundle: bundle)
//        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
//        view.frame = self.bounds
        let myXib = Bundle.main.loadNibNamed("BehavioralExperiment", owner: BehavioralExperiment(), options: nil)?.first as! UIView
        myXib.frame = self.view.bounds
        if let myXib = myXib as? BehavioralExperiment {
            myXib.testFunction(title: "素晴らしい！成功だ！")
        }
        self.view.addSubview(myXib)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
