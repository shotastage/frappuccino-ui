//
//  ButtonsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/15.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import Frappuccino
import AloeStackView



final class ButtonsViewController: UIViewController {
    
    
    override func viewDidLoad() {
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
            layout.top = YGValue((self.navigationController?.navigationBar.bounds.height)! + Size.Safearea.top + 30)
        }
        root.addSubview(defaultButton)
        
        
        let basicButton1 = Button(text: "Basic Button")
    
        //defaultButton.setTitle("Basic Button", for: .normal)
        basicButton1.configureLayout { (layout) in
            layout.isEnabled = true
        }
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
}
