//
//  CircleButton.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/04/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


open class CircleButton: UIButton {
    
    public var size: CGFloat = 50
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame.size.width = size
        self.frame.size.height = size
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        self.backgroundColor = UIColor(hex: "f90c6b")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
