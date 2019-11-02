import UIKit
import MaterialComponents.MaterialCards

class TopPageViewController: UIViewController {
    
    @IBOutlet weak var AutoThinkingList: MDCCard!
    
    @IBAction func AutoThinkingListTouched(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "AutoThinkingSheet")
        self.present(second, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
