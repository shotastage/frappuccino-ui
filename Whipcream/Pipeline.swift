//
//  Pipeline.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/29.
//  Copyright © 2019-2020 Shota Shimazu. All rights reserved.
//

import UIKit



open class Pipeline {

    private init() {
        NSLog("THIS FEATURE IS NOW UNDER CONSTRUCTION")
    }

    public static var shared: Pipeline {
        get {
            return Pipeline()
        }

        set {
            self.shared = newValue
        }
    }

}
