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


        let layoutRectangle = UIView()
        layoutRectangle.backgroundColor = .red
        layoutRectangle.frame = WhipLayout.auto(top: 300, bottom: 200, right: 30, left: 30)
        self.view.addSubview(layoutRectangle)
    }
}
