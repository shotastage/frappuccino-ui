//
//  BasicButtons.swift
//  Whipcream
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
        layer.cornerRadius = cornerRadius

        setTitle("TITLE", for: .normal)
        tintColor = textColor
        setTitleColor(textColor, for: .normal)
        backgroundColor = UIColor(hex: "4286f4")

        updateLayout()
    }

    open override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = bounds.size.height / 2
        layer.borderWidth = 1
        frame.size.width = width
    }

    private func updateLayout() {
        setNeedsLayout()
        layoutIfNeeded()
    }
}
