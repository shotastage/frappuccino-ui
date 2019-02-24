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
        marginView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size.width)
            layout.height = 100
        }
        root.addSubview(marginView)
        
        
        let titleLabel: Heading = Heading(text: "Separator Line", size: .h2)
        titleLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size.width)
        }
        root.addSubview(titleLabel)
        
        
        let separatorView: Separator = Separator()
        separatorView.configureLayout { (layout) in
            layout.isEnabled = true
        }
        root.addSubview(separatorView)
        
        
        
        root.yoga.applyLayout(preservingOrigin: false)
    }
}
