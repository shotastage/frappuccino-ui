//
//  UtilViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class UtilViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        navigationItem.title = "Utilities"

        let root = view!

        root.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(Size(self.view).width)
            layout.height = YGValue(Size(self.view).height)
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
        root.addSubview(stackView)

        registerMenu(title: "Size Utils", handler: {
            self.toSizeClass()
        })

        registerMenu(title: "Margins", handler: {
            self.toMarginClass()
        })

        registerMenu(title: "WhipLayout", handler: {
            self.toWhipLayout()
        })

        root.yoga.applyLayout(preservingOrigin: true)
    }
}

extension UtilViewController {
    private func registerMenu(title: String, handler: (() -> Void)? = nil) {
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

extension UtilViewController {
    func toSizeClass() {
        let next: UIViewController = SizeExampleViewController()

        show(next, sender: nil)
    }

    func toMarginClass() {
        let next: UIViewController = MarginListExampleViewController()

        show(next, sender: nil)
    }

    func toWhipLayout() {
        let next: UIViewController = WhipLayoutViewController()

        show(next, sender: nil)
    }
}
