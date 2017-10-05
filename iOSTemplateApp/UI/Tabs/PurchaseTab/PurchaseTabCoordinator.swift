//
//  Copyright © 2017 Mubaloo. All rights reserved.
//

import UIKit

class PurchaseTabCoordinator: RootTabCoordinator {
    
    var childCoordinators: [Coordinator] = []
    
    let storyboard = UIStoryboard(.purchase)
    
    var rootController: UINavigationController
    var tabBarItem: UITabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
    
    let dependencies = PurchaseTabModule()
    
    init() {
        let selectViewController: SelectItemViewController = storyboard.inflateVC(with: dependencies)
        
        rootController = UINavigationController(rootViewController: selectViewController)
        rootController.tabBarItem = tabBarItem

    }
}

