//
//  UIView+Size.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


public protocol UIViewSizeProperties: class { }


extension UIViewSizeProperties where Self: UIView {

    public var width: CGFloat {
        get {
            return self.frame.size.width
        }

        set {
            self.frame.size.width = newValue
        }
    }

    public var height: CGFloat {
        get{
            return self.frame.size.height
        }

        set {
            self.frame.size.height = newValue
        }
    }

    public var x: CGFloat {
        get {
            return self.frame.origin.x
        }

        set {
            self.frame.origin.x = newValue
        }
    }

    public var y: CGFloat {
        get{
            return self.frame.origin.y
        }

        set {
            self.frame.origin.y = newValue
        }
    }

    public var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }

        set {
            self.x = newValue - self.frame.size.width
        }
    }

    public var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }

        set {
            self.y = newValue - self.frame.size.height
        }
    }

}
