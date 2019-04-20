//
//  TabBarController.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/04/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    public var tabBarHeight: CGFloat = 60
    
    public var verticalOffset: CGFloat = 6.0
    
    public var safeAreaBottom: CGFloat = 34.0
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        removeTabbarItemsText()
        provideStyle()
        
        //object_setClass(self.tabBar, PINNATabBar.self)
        //(self.tabBar as? PINNATabBar)?.compose()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    
    /// Instance method for providing basic appearance theme
    private func provideStyle() {
        // Icon Color
        self.tabBar.tintColor = UIColor(hex: "333333")
        
        // Icon Unselected Color
        self.tabBar.unselectedItemTintColor = UIColor(hex: "333333")
        
        // TabBar Background Color
        self.tabBar.barTintColor = .white
    }
    
    
    
    private func removeTabbarItemsText() {
        if let items = self.tabBar.items {
            for item in items {
                item.title = ""
                item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0);
            }
        }
    }
}
