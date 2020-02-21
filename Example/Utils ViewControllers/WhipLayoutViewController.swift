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

        WLViewStack(root: self.view)
        .add(redRectangle) { view in
            view.backgroundColor = .red
            view.frame = CGRect(x: 0, y: 150, width: Size.width, height: 50)
        }
        .add(blueRectangle) { view in
            view.backgroundColor = .blue
            view.frame = CGRect(x: Size.width - 50, y: 0, width: 50, height: Size.height)
        }
    }
}
