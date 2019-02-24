//
//  SeparatorView.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/02/20.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class Separator: UIView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(hex: "CCD1D9")
        self.frame.size.width = Size.width
        self.frame.size.height = 0.8
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
