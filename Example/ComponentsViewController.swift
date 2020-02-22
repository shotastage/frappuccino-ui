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
import Whipcream



final class ComponentsViewController: UIViewController {


    private let stackView = AloeStackView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Components"

        let root = self.view!

        root.addSubview(stackView)

        registerMenu(title: "Headings", handler:  {
            self.toHeadings()
        })

        registerMenu(title: "Buttons", handler:  {
            self.toButtons()
        })

        registerMenu(title: "Separators", handler: {
            self.toSeparators()
        })
        
        registerMenu(title: "Text", handler: {
            self.toText()
        })
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let root = self.view!

        root.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.width)
            layout.height = YGValue(self.view.bounds.height)
            layout.flexDirection = .column
            layout.justifyContent = .flexStart
            layout.alignItems = .center
            layout.flexWrap = .noWrap
        }

        self.stackView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(Size(self.view).width)
            layout.height = YGValue(Size(self.view).height)
        }

        root.yoga.applyLayout(preservingOrigin: true)
    }
}

extension ComponentsViewController {
    func registerMenu(title: String, handler: Optional<() -> Void> = nil) {
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

extension ComponentsViewController {
    func toHeadings() {
        let next: UIViewController = HeadingsViewController()
        self.show(next, sender: nil)
    }

    func toButtons() {
        let next: UIViewController = ButtonsViewController()
        self.show(next, sender: nil)
    }

    func toSeparators() {
        let next: UIViewController = SeparatorsViewController()
        self.show(next, sender: nil)
    }
    
    func toText() {
        let next: UIViewController = TextViewController()
        self.show(next, sender: nil)
    }
}
