//
//  BasicButtons.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Button: UIButton {
    
    public convenience init(text: String) {
        self.init(title: text, buttonType: "TEST")
    }
    
    required public init(title: String, buttonType: String) {
        
        super.init(frame: .zero)
        
        self.titleLabel?.text = title
        self.tintColor = UIColor(hex: "333333")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
