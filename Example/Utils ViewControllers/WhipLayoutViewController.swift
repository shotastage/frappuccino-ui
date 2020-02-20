//
//  WhipLayoutViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2020/02/20.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//


import UIKit
import YogaKit
import Whipcream
import AloeStackView



final class WhipLayoutViewController: UIViewController {

    private let stackView = AloeStackView()

    override func viewDidLoad() {
        self.navigationItem.title = "WhipLayout Engine"
        
        let redRectangle = UIView()
        let blueRectangle = UIView()

        WhipLayoutNX(root: self.view)
            .add(redRectangle) { view in
                view.backgroundColor = .red
                view.frame = CGRect(x: 0, y: 200, width: 100, height: 100)
            }
            .add(blueRectangle) { view in
                view.backgroundColor = .blue
                view.frame = CGRect(x: 0, y: 400, width: 100, height: 100)
            }
            .apply()
    }
}
