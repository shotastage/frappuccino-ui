//
//  ButtonsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/15.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import Whipcream
import AloeStackView



final class ButtonsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Buttons"
        
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
        

        
        let defaultButton = UIButton()
        defaultButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        defaultButton.setTitle("Default Button", for: .normal)
        defaultButton.setTitleColor(.blue, for: .normal)
        defaultButton.configureLayout { (layout) in
            layout.isEnabled = true
            layout.top = 20
        }
        root.addSubview(defaultButton)
        
        
        let basicButton1 = Button()
        basicButton1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.height = 60
            layout.width = 130
            layout.top = 50
        }
        basicButton1.setTitle("BASIC", for: .normal)
        root.addSubview(basicButton1)
        
        
        
        let circleButton1 = CircleButton()
        circleButton1.size = 80
        circleButton1.backgroundColor = .red
        circleButton1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.top = 80
            layout.width = 60
            layout.height = 60
        }
        root.addSubview(circleButton1)
        
        self.view.yoga.applyLayout(preservingOrigin: true)

    }
}
