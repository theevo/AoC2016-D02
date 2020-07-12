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
    
    init() {
        loadMockData()
    }
    
    func loadMockData() {
        let string = "ULL"
        
        for char in string {
            if let direction = Direction(char) {
                arrayOfDirections.append(direction)
            }
        }
        
        print(arrayOfDirections)
    }
}
