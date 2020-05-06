

import Foundation
import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did Load Navigation Controller")
        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.init(name: "Ubuntu-Medium", size: 16)!, NSAttributedString.Key.foregroundColor: UIColor.white]
        self.delegate = self
        navigationBar.setBackgroundImage(UIImage(),
                                         for: .default)
        navigationBar.shadowImage = UIImage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.init(name: "Ubuntu-Medium", size: 16)!, NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
}

extension NavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        let backButton = UIBarButtonItem()
        viewController.navigationItem.backBarButtonItem = backButton
        self.navigationItem.backBarButtonItem = backButton
    }
}
