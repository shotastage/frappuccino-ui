//
//  Stylesheet.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class Stylesheet {
    /// Size
    public var width: CGFloat = 0.0
    public var height: CGFloat = 0.0

    /// Position
    public var x: CGFloat = 0.0
    public var y: CGFloat = 0.0

    /// Color
    public var background: UIColor = UIColor(hex: "FFFFFF")
    public var color: UIColor = UIColor(hex: "333333")

    /// Font
    public var fontSize: CGFloat = 0.0

    ///
    public var frame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)

    public func construct() {
        frame = frameSize()
    }
}
