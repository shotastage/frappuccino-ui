//
//  View.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class View: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    public convenience init(style: Stylesheet) {
        self.init(frame: CGRect())
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
