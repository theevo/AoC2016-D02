//
//  KeyController.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import Foundation

class KeyController {
    static let shared = KeyController()
    
    var currentKey = Key.k5
    
    var arrayOfDirections = [Direction]()
}
