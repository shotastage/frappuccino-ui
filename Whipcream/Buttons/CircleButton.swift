//
//  CircleButton.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class CircleButton: UIButton {

    public var size: CGFloat = 60

    public var boxShadow: OnOff = .off

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.frame.size.width = size
        self.frame.size.height = size
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = false
        self.backgroundColor = UIColor(hex: "ff0033")

        // Box-shadow
        if boxShadow.boolean {
            self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            self.layer.shadowColor = UIColor(hex: "ff0033").cgColor
            self.layer.shadowOpacity = 0.6
            self.layer.shadowRadius = 4
        }
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
