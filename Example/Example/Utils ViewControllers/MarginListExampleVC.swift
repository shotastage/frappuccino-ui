//
//  MarginListExampleVC.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/24.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import Whipcream
import AloeStackView



final class MarginListExampleViewController: UIViewController {
    
    private let stackView = AloeStackView()
    
    override func viewDidLoad() {
        self.navigationItem.title = "Margin Lists"
        
        let root = self.view!
        
        root.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size.width)
            layout.height = YGValue(Size.height)
            layout.flexDirection = .column
            layout.justifyContent = .flexStart
            layout.alignItems = .center
            layout.flexWrap = .noWrap
        }
        
    
        
        registerMargin(title: "SS")
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
    
    
    private func registerMargin(title: String) {
        
        let marginView = UIView()
        marginView.backgroundColor = .red
        marginView.frame.size.height = 20
        marginView.frame.size.width = 20
        
        self.view.addSubview(marginView)
        
    }
}
