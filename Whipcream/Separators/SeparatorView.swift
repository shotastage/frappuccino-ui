//
//  SeparatorView.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/02/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class Separator: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = UIColor(hex: "CCD1D9")
        self.frame.size.width = Size(self).width
        self.frame.size.height = 0.8
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
