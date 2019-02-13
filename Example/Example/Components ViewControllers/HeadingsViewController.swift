//
//  HeadingsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/13.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit
import Frappuccino
import AloeStackView



final class HeadingsViewController: UIViewController {
    
    private let stackView = AloeStackView()
    
    override func viewDidLoad() {
        self.navigationItem.title = "Headings"
        
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
        
        
        registerMenu(title: "SafeArea Top: \(Size.Safearea.top)")
        registerMenu(title: "SafeArea Bottom: \(Size.Safearea.bottom)")
        registerMenu(title: "Screen Size Width: \(Size.width)")
        registerMenu(title: "Screen Size Height: \(Size.height)")
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
    
    
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
