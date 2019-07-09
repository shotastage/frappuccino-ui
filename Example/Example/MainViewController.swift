//
//  MainViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



final class MainViewController: UITabBarController {

    override func viewDidLoad() {

        let tab1 = ComponentsViewController()
        tab1.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)

        let tab2 = UtilViewController()
        tab2.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let nv1 = UINavigationController(rootViewController: tab1)

        let nv2 = UINavigationController(rootViewController: tab2)

        setViewControllers([nv1, nv2], animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
