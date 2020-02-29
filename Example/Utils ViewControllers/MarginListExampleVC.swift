//
//  MarginListExampleVC.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/24.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class MarginListExampleViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        navigationItem.title = "Margin Lists"

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

        registerMargin(title: "SS")

        root.yoga.applyLayout(preservingOrigin: true)
    }

    private func registerMargin(title: String) {
        let marginView = UIView()
        marginView.backgroundColor = .red
        marginView.frame.size.height = 20
        marginView.frame.size.width = 20

        view.addSubview(marginView)
    }
}
