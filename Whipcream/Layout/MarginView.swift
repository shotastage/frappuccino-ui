//
//  MarginView.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/29.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class MarginView {

    public var top: CGFloat = 0
    public var bottom: CGFloat = 0
    public var right: CGFloat = 0
    public var left: CGFloat = 0
    
    public var insetsView: UIEdgeInsets {
        return UIEdgeInsets(
            top: top, left: left, bottom: bottom, right: right)
    }
}
