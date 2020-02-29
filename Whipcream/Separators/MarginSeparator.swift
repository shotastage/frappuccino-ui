//
//  MarginSeparator.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/02/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class MarginSeparator: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        frame.size.width = Size(self).width
        frame.size.height = 70
    }
}
