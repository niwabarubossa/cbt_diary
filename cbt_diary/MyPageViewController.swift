//
//  MyPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/10/30.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadTemplate()
    }
    
    func loadTemplate(){
        let view = Bundle.main.loadNibNamed("SheetCardView", owner: SheetCardView(), options: nil)?.first as! UIView
        view.frame = self.view.bounds
        self.view.addSubview(view)
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
