//
//  Whipcream+Control.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/22.
//  Copyright © 2019-2020 Shota Shimazu. All rights reserved.
//

import Foundation


public enum OnOff {
    case on
    case off

    var boolean: Bool {
        switch self {
        case .on:
            return true
        case .off:
            return false
        }
    }
}
