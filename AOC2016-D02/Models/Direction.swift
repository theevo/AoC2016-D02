//
//  Direction.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import Foundation

enum Direction {
    case up
    case down
    case left
    case right
}

extension Direction {
    init?(_ str: String.Element) {
        switch str.uppercased() {
        case "U":
            self = .up
        case "D":
            self = .down
        case "L":
            self = .left
        case "R":
            self = .right
        default:
            return nil
        }
    }
}

extension Direction: CustomStringConvertible {
    var description: String {
        switch self {
        case .up:
            return "Up"
        case .down:
            return "Down"
        case .left:
            return "Left"
        case .right:
            return "Right"
        }
    }
}
