//
//  CrazyKey.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/12/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import Foundation

enum CrazyKey {
    case k1
    case k2
    case k3
    case k4
    case k5
    case k6
    case k7
    case k8
    case k9
    case kA
    case kB
    case kC
    case kD
}

extension CrazyKey {
    func go(_ dir: Direction) -> CrazyKey {
        switch dir {
        case .up:
            switch self {
            case .k1, .k2, .k4, .k5, .k9:
                return self
            case .k3:
                return .k1
            case .k6:
                return .k2
            case .k7:
                return .k3
            case .k8:
                return .k4
            case .kA:
                return .k6
            case .kB:
                return .k7
            case .kC:
                return .k8
            case .kD:
                return .kB
            }
        case .down:
            switch self {
            case .k5, .kA, .kD, .kC, .k9:
                return self
            case .k1:
                return .k3
            case .k2:
                return .k6
            case .k3:
                return .k7
            case .k4:
                return .k8
            case .k6:
                return .kA
            case .k7:
                return .kB
            case .k8:
                return .kC
            case .kB:
                return .kD
            }
        case .left:
            switch self {
            case .k1, .k2, .k5, .kA, .kD:
                return self
            case .k3:
                return .k2
            case .k4:
                return .k3
            case .k6:
                return .k5
            case .k7:
                return .k6
            case .k8:
                return .k7
            case .k9:
                return .k8
            case .kB:
                return .kA
            case .kC:
                return .kB
            }
        case .right:
            switch self {
            case .k1, .k4, .k9, .kC, .kD:
                return self
            case .k2:
                return .k3
            case .k3:
                return .k4
            case .k5:
                return .k6
            case .k6:
                return .k7
            case .k7:
                return .k8
            case .k8:
                return .k9
            case .kA:
                return .kB
            case .kB:
                return .kC
            }
        }
    }
}

extension CrazyKey: CustomStringConvertible {
    var description: String {
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
        case .kA:
            return "A"
        case .kB:
            return "B"
        case .kC:
            return "C"
        case .kD:
            return "D"
        }
    }
}
