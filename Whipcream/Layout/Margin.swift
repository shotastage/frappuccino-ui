//
//  MarginView.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/29.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class Margin {
    public var top: CGFloat

    public var bottom: CGFloat

    public var right: CGFloat

    public var left: CGFloat

    public init(top: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0, left: CGFloat = 0) {
        self.top = top
        self.bottom = bottom
        self.right = right
        self.left = left
    }

    public var view: UIEdgeInsets {
        UIEdgeInsets(
            top: top, left: left, bottom: bottom, right: right
        )
    }
}
