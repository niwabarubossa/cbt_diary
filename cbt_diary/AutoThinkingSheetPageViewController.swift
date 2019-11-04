//
//  AutoThinkingSheetPageViewController.swift
//  cbt_diary
//
//  Created by 丹羽遼吾 on 2019/11/02.
//  Copyright © 2019 ryogo.niwa. All rights reserved.
//

import UIKit

class AutoThinkingSheetPageViewController: UIViewController {
    
    @IBAction func DismissSheet(_ sender: Any) {
        print("clicked")
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var AutoThinkingFirstView: UIView!
    @IBOutlet weak var AutoThinkingSecondView: UIView!
    @IBOutlet weak var AutoThinkingThirdView: UIView!
    @IBOutlet weak var AutoThinkingFourthView: UIView!
    @IBOutlet weak var AutoThinkingFifthView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUIView()
    }
    
    func setUpUIView(){
        AutoThinkingFirstView.layer.cornerRadius = 3
        AutoThinkingFirstView.clipsToBounds = true
        AutoThinkingSecondView.layer.cornerRadius = 3
        AutoThinkingSecondView.clipsToBounds = true
        AutoThinkingThirdView.layer.cornerRadius = 3
        AutoThinkingThirdView.clipsToBounds = true
        AutoThinkingFourthView.layer.cornerRadius = 3
        AutoThinkingFourthView.clipsToBounds = true
        AutoThinkingFifthView.layer.cornerRadius = 3
        AutoThinkingFifthView.clipsToBounds = true
    }
    
}
