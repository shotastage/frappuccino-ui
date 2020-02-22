//
//  Text.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/07/09.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Text: UILabel {

    /// Font propertoes

    public var fontSize: CGFloat = 22.0

    public var color: UIColor = UIColor(hex: "333333")

    /// Layout properties
    public var margin: Margin = Margin()

    override public init(frame: CGRect) {
        super.init(frame: frame)
    }

    public convenience init(text: String, size: CGFloat = 12.0, font: String = "Helvetica-Bold", line: Int = 1) {
        self.init()

        self.text = text
        self.numberOfLines = line
        self.font = UIFont(name: font, size: size)
        self.frame.size.width = Size(self).width - MarginSize.small
        self.textAlignment = .left
        self.textColor = self.color
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override open func drawText(in rect: CGRect) {
        let newRect = rect.inset(by: margin.view)

        super.drawText(in: newRect)
    }
}
