//
//  ButtonsViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2019/02/15.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import AloeStackView
import UIKit
import Whipcream
import YogaKit

final class ButtonsViewController: UIViewController {
    let defaultButton = UIButton()
    let basicButton1 = Button()
    let circleButton1 = CircleButton()

    override func viewDidLoad() {
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Buttons"

        let root = view!
        root.backgroundColor = .white

        defaultButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        defaultButton.setTitle("Default Button", for: .normal)
        defaultButton.setTitleColor(.blue, for: .normal)

        basicButton1.setTitle("BASIC", for: .normal)

        circleButton1.size = 80
        circleButton1.backgroundColor = .red

        WhipViewStack(root: view)
            .add(defaultButton)
            .add(basicButton1)
            .add(circleButton1)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

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

        defaultButton.configureLayout { layout in
            layout.isEnabled = true
            layout.top = 20
        }

        basicButton1.configureLayout { layout in
            layout.isEnabled = true
            layout.height = 60
            layout.width = 130
            layout.top = 50
        }

        circleButton1.configureLayout { layout in
            layout.isEnabled = true
            layout.top = 80
            layout.width = 60
            layout.height = 60
        }

        view.yoga.applyLayout(preservingOrigin: true)
    }
}
