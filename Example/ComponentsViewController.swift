//
//  ComponentsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class ComponentsViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Components"

        let root = view!

        root.addSubview(stackView)

        registerMenu(title: "Headings", handler: {
            self.toHeadings()
        })

        registerMenu(title: "Buttons", handler: {
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

        let root = view!

        root.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.width)
            layout.height = YGValue(self.view.bounds.height)
            layout.flexDirection = .column
            layout.justifyContent = .flexStart
            layout.alignItems = .center
            layout.flexWrap = .noWrap
        }

        stackView.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(Size(self.view).width)
            layout.height = YGValue(Size(self.view).height)
        }

        root.yoga.applyLayout(preservingOrigin: true)
    }
}

extension ComponentsViewController {
    func registerMenu(title: String, handler: (() -> Void)? = nil) {
        let label = UILabel()
        label.text = title
        stackView.addRow(label)

        if handler != nil {
            stackView.setTapHandler(
                forRow: label,
                handler: { _ in
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
        show(next, sender: nil)
    }

    func toButtons() {
        let next: UIViewController = ButtonsViewController()
        show(next, sender: nil)
    }

    func toSeparators() {
        let next: UIViewController = SeparatorsViewController()
        show(next, sender: nil)
    }

    func toText() {
        let next: UIViewController = TextViewController()
        show(next, sender: nil)
    }
}
