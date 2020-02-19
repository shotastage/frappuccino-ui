//
//  Image.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2020/02/19.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit


open class Image: UIImageView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(image: String, aspect: UIImageView.ContentMode) {
        self.init(frame: .zero)
        self.contentMode = aspect
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
