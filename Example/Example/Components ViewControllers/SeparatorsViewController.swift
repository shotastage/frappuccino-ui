//
//  SeparatorsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import Frappuccino
import AloeStackView


final class SeparatorsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        self.navigationItem.title = "Separators"
        
        let root = self.view!
        root.backgroundColor = .white
        root.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size.width)
            layout.height = YGValue(Size.height)
            layout.flexDirection = .column
            layout.justifyContent = .flexStart
            layout.alignItems = .center
            layout.flexWrap = .noWrap
        }
        
        
        
        
        
        let marginView: MarginSeparator = MarginSeparator()
        marginView.backgroundColor = .cyan
        marginView.configureLayout { (layout) in
            layout.isEnabled = true
        }
        root.addSubview(marginView)
        
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
}
