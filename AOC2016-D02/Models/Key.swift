//
//  Key.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import Foundation

enum Key {
    case k1
    case k2
    case k3
    case k4
    case k5
    case k6
    case k7
    case k8
    case k9
    
    var str: String {
        switch self {
        case .k1:
            return "1"
        case .k2:
            return "2"
        case .k3:
            return "3"
        case .k4:
            return "4"
        case .k5:
            return "5"
        case .k6:
            return "6"
        case .k7:
            return "7"
        case .k8:
            return "8"
        case .k9:
            return "9"
        }
    }
}
