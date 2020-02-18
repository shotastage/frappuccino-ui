//
//  TextViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2020/02/19.
//

import UIKit
import YogaKit
import Whipcream
import AloeStackView



final class TextViewController: UIViewController {

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


        let textOneLiner = Text(text: "Swift is wonderful.", size: 18)
        stackView.addRow(textOneLiner)

        let textMultiLiner = Text(
            text: "Swift is wonderful programming language for iOS or macOS based platform.",
            size: 18,
            line: 10)
        stackView.addRow(textMultiLiner)

      
        

        root.yoga.applyLayout(preservingOrigin: true)
    }

}
