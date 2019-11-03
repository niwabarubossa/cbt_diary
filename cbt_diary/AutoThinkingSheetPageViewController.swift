//
//  AutoThinkingSheetPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/02.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class AutoThinkingSheetPageViewController: UIViewController {
    @IBAction func DismissAutoThinking(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var AutoThinkingFirstLabel: UILabel!
    @IBOutlet weak var AutoThinkingSecondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AutoThinkingFirstLabel.layer.cornerRadius = 3
        AutoThinkingFirstLabel.clipsToBounds = true
        AutoThinkingSecondView.layer.cornerRadius = 3
        AutoThinkingSecondView.clipsToBounds = true
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
