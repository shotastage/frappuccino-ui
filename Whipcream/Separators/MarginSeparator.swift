//
//  MarginSeparator.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/02/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class MarginSeparator: UIView {

    override public init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.frame.size.width = Size.width
        self.frame.size.height = 70
    }
}
