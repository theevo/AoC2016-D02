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

extension Key {
    func go(_ dir: Direction) -> Key {
        switch dir {
        case .up:
            switch self {
            case .k1, .k2, .k3:
                return self
            case .k4:
                return .k1
            case .k5:
                return .k2
            case .k6:
                return .k3
            case .k7:
                return .k4
            case .k8:
                return .k5
            case .k9:
                return .k6
            }
        case .down:
            switch self {
            case .k1:
                return .k4
            case .k2:
                return .k5
            case .k3:
                return .k6
            case .k4:
                return .k7
            case .k5:
                return .k8
            case .k6:
                return .k9
            case .k7, .k8, .k9:
                return self
            }
        case .left:
            switch self {
            case .k1, .k4, .k7:
                return self
            case .k2:
                return .k1
            case .k3:
                return .k2
            case .k5:
                return .k4
            case .k6:
                return .k5
            case .k8:
                return .k7
            case .k9:
                return .k8
            }
        case .right:
            switch self {
            case .k3, .k6, .k9:
                return self
            case .k1:
                return .k2
            case .k2:
                return .k3
            case .k4:
                return .k5
            case .k5:
                return .k6
            case .k7:
                return .k8
            case .k8:
                return .k9
            }
        }
    }
}
