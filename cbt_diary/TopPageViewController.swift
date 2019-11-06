import UIKit
import MaterialComponents.MaterialCards

class TopPageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
//    @IBAction func AutoThinkingListTouched(_ sender: Any) {
//        let storyboard: UIStoryboard = self.storyboard!
//        let second = storyboard.instantiateViewController(withIdentifier: "AutoThinkingSheet")
//        self.present(second, animated: true, completion: nil)
//    }
    
    
    let models = SheetModel.createModels()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
         tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopPageTableViewCell") as! TopPageTableViewCell

        if let cell = cell as? TopPageTableViewCell {
            cell.setupCell(model: models[indexPath.section])
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section)番目のセルがタップされました")
        let storyboard: UIStoryboard = self.storyboard!
        print("\(models[indexPath.section].storyboardId)")
        let second = storyboard.instantiateViewController(withIdentifier: models[indexPath.section].storyboardId)
        self.present(second, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let marginView = UIView()
        marginView.backgroundColor = .clear
        return marginView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15  // お好みで
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .leastNonzeroMagnitude
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
}
