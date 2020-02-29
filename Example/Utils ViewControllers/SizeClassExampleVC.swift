//
//  SizeClassExampleVC.swift
//  Example
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class SizeExampleViewController: UIViewController {
    private let stackView = AloeStackView()

    override func viewDidLoad() {
        navigationItem.title = "Size Classes"

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

        registerMenu(title: "SafeArea Top: \(Size.Safearea.top)")
        registerMenu(title: "SafeArea Bottom: \(Size.Safearea.bottom)")
        registerMenu(title: "Status Bar Height: \(Size.statusbarHeight)")
        registerMenu(title: "Screen Size Width: \(Size(view).width)")
        registerMenu(title: "Screen Size Height: \(Size(view).height)")

        root.yoga.applyLayout(preservingOrigin: true)
    }

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
