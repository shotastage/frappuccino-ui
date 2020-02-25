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

    override func viewDidLoad() {
        self.navigationItem.title = "WhipLayout Engine"
        self.view.backgroundColor = .white
        
        let redRectangle = UIView()
        redRectangle.frame = CGRect(x: 0, y: 300, width: 100, height: 100)
        redRectangle.backgroundColor = .red
        
        
        let blueRectangle = UIView()
        blueRectangle.frame = CGRect(x: 0, y: 500, width: 100, height: 100)
        blueRectangle.backgroundColor = .blue

        
        VStack(view) {
            redRectangle
            blueRectangle
        }
    }
}
