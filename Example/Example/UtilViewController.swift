//
//  UtilViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import AloeStackView
import Frappuccino


final class UtilViewController: UIViewController {
    
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        self.navigationItem.title = "Utilities"
        
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
        
        
        registerMenu(title: "Size Utils", handler: {
            self.toSizeClass()
        })
        
        registerMenu(title: "Margins", handler: {
            self.toMarginClass()
        })
        
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
}



extension UtilViewController {
    private func registerMenu(title: String, handler: Optional<() -> Void> = nil) {
        let label = UILabel()
        label.text = title
        stackView.addRow(label)
        
        if handler != nil {
            stackView.setTapHandler(
                forRow: label,
                handler: { label in
                    handler!()
            }
            )
            
            label.isUserInteractionEnabled = true
        }
    }
}



extension UtilViewController {
    func toSizeClass() {
        let next: UIViewController = SizeExampleViewController()
        
        self.show(next, sender: nil)
    }
    
    func toMarginClass() {
        let next: UIViewController = MarginListExampleViewController()
        
        self.show(next, sender: nil)
    }
}
