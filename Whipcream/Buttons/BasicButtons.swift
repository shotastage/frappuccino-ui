//
//  BasicButtons.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Button: UIButton {
    
    public var textColor: UIColor = UIColor(hex: "ffffff")
    
    public var cornerRadius: CGFloat = 15 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    public var width: CGFloat = 150 {
        didSet {
            updateLayout()
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = cornerRadius

        self.setTitle("TITLE", for: .normal)
        self.tintColor = self.textColor
        self.setTitleColor(textColor, for: .normal)
        self.backgroundColor = UIColor(hex: "4286f4")
        
        updateLayout()

    }
    
  
    override open func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)

    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = self.bounds.size.height / 2
        self.layer.borderWidth = 1
        self.frame.size.width = width

    }
    
    private func updateLayout() {
        setNeedsLayout()
        layoutIfNeeded()
    }
}
