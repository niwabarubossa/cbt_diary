import UIKit

class CbtSheetPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myXib = Bundle.main.loadNibNamed("BehavioralExperiment", owner: BehavioralExperiment(), options: nil)?.first as! UIView
        myXib.frame = self.view.bounds
        if let myXib = myXib as? BehavioralExperiment {
            myXib.testFunction(title: "変更成功だ！")
        }
        self.view.addSubview(myXib)

    }
    
}
