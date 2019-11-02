import UIKit
import MaterialComponents.MaterialCards

class TopPageViewController: UIViewController {

    @IBOutlet weak var MDCCardParentView: UIView!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    override func viewDidAppear(_ animated: Bool) {
    override func viewDidLayoutSubviews(){
//        MDCCardParentView.bringSubviewToFront(dataLabel)
//        MDCCardParentView.sendSubviewToBack(card)
//        self.view.sendSubviewToBack(targetView)

    }
}
