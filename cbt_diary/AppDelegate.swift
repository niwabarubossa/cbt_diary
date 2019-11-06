import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        var viewControllers: [UIViewController] = []
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyboard.instantiateViewController(withIdentifier: "Home")
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        viewControllers.append(firstVC)

        let secondVC = storyboard.instantiateViewController(withIdentifier: "CbtSheet")
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        viewControllers.append(secondVC)
        
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "MyPage")
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 3)
        viewControllers.append(thirdVC)
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

