//
//  ComponentsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import AloeStackView
import YogaKit
import Frappuccino



final class ComponentsViewController: UIViewController {
    
    
    private let stackView = AloeStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Components"
        
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
        
        self.stackView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size.width)
            layout.height = YGValue(Size.height)
        }
        root.addSubview(stackView)
        
        for i in 1...100 {
            let label = UILabel()
            label.text = "Label \(i)"
            stackView.addRow(label)
        }
        
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
}
