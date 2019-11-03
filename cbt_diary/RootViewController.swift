import UIKit
import ESTabBarController

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTab()
        // Do any additional setup after loading the view.
    }
    
    func setupTab() {
        
        // 画像のファイル名を指定してESTabBarControllerを作成する
        let tabBarController: ESTabBarController! = ESTabBarController(tabIconNames: ["exposure", "exposure", "exposure","exposure","exposure"])
        tabBarController.selectionIndicatorHeight = 3
        
        // 作成したESTabBarControllerを親のViewController（＝self）に追加する
        addChild(tabBarController)
        let tabBarView = tabBarController.view!
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabBarView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            tabBarView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tabBarView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            tabBarView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tabBarView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            ])
        tabBarController.didMove(toParent: self)
        
        // タブをタップした時に表示するViewControllerを設定する
        let HomePageViewController = storyboard?.instantiateViewController(withIdentifier: "Home")
        let CbtSheetViewController = storyboard?.instantiateViewController(withIdentifier: "CbtSheet")
        let MyPageViewController = storyboard?.instantiateViewController(withIdentifier: "MyPage")
        let AboutCbtViewController = storyboard?.instantiateViewController(withIdentifier: "AboutCbt")
        
        
        tabBarController.setView(HomePageViewController, at: 0)
        tabBarController.setView(CbtSheetViewController, at: 1)
        tabBarController.setView(MyPageViewController, at: 3)
        tabBarController.setView(AboutCbtViewController, at: 4)
        
        // 真ん中のタブはボタンとして扱う
        tabBarController.highlightButton(at: 2)
        tabBarController.setAction({
            // ボタンが押されたらImageViewControllerをモーダルで表示する
//            let imageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageSelect")
//            self.present(imageViewController!, animated: true, completion: nil)
            print("clicked")
        }, at: 2)
    }

}
