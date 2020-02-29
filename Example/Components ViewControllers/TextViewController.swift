//
//  TextViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2020/02/19.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class TextViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Headings"

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

        let textOneLiner = Text(text: "Swift is wonderful.", size: 18)
        stackView.addRow(textOneLiner)

        let textMultiLiner = Text(
            text: "Swift is wonderful programming language for iOS or macOS based platform.",
            size: 18,
            line: 10
        )
        stackView.addRow(textMultiLiner)

        root.yoga.applyLayout(preservingOrigin: true)
    }
}
