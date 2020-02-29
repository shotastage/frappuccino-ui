//
//  UIView+Size.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

public protocol UIViewSizeProperties: AnyObject {}

extension UIViewSizeProperties where Self: UIView {
    public var width: CGFloat {
        get {
            frame.size.width
        }

        set {
            frame.size.width = newValue
        }
    }

    public var height: CGFloat {
        get {
            frame.size.height
        }

        set {
            frame.size.height = newValue
        }
    }

    public var x: CGFloat {
        get {
            frame.origin.x
        }

        set {
            frame.origin.x = newValue
        }
    }

    public var y: CGFloat {
        get {
            frame.origin.y
        }

        set {
            frame.origin.y = newValue
        }
    }

    public var right: CGFloat {
        get {
            frame.origin.x + frame.size.width
        }

        set {
            x = newValue - frame.size.width
        }
    }

    public var bottom: CGFloat {
        get {
            frame.origin.y + frame.size.height
        }

        set {
            y = newValue - frame.size.height
        }
    }
}
