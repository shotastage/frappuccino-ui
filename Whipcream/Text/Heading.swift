//
//  Header.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Heading: UILabel {

    /// Font propertoes
    public var fontName: String = "Helvetica-Bold"

    public var fontSize: CGFloat = 22.0

    public var color: UIColor = UIColor(hex: "333333")

    /// Layout properties
    public var margin: Margin = Margin()


    private var fontTextAttributes: [NSAttributedString.Key: UIFont] {
        get {
            return [NSAttributedString.Key.font: UIFont(name: self.fontName, size: self.fontSize)!]
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
    }

    public convenience init(text: String, size headingSize: Heading.Headings = .h1) {
        self.init()

        self.text = text
        self.numberOfLines = 1
        self.font = self.font.withSize(headingSize.rawValue)
        self.frame.size.width = Size.width - MarginSize.small
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

    public enum Headings: CGFloat {
        case h1 = 35.0
        case h2 = 28.0
        case h3 = 23.0
        case h4 = 18.0
        case h5 = 15.0
        case h6 = 12.0
    }

    public static func free(size: CGFloat) -> Headings {
        return Headings(rawValue: size)!
    }
}
