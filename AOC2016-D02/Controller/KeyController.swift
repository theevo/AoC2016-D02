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
    
    var combination = [CrazyKey]()
    
    var currentKey = CrazyKey.k5
    
    var arrayOfDirections = [[Direction]]()
    var arrayOfKeys = [[CrazyKey]]()
    
    init() {
        loadInputFile()
        
        setupOutputProperties()
        
        run()
    }
    
    // MARK: - Private Functions
    
    private func loadInputFile() {
        if let filepath = Bundle.main.path(forResource: "input", ofType: "") {
            var lines: [String] = []
            do {
                let contents = try String(contentsOfFile: filepath)
                lines = contents.components(separatedBy: "\n").filter({ !$0.isEmpty })
                
                tokenize(lines)
                
            } catch {
                print(error)
            }
        } else {
            print("didn't find the file!")
        }
    }
    
    private func tokenize(_ lines: [String]) {
        
        arrayOfDirections = Array(repeating: [], count: lines.count)
        
        for i in 0..<lines.count {
            
            let string = lines[i]
            
            for char in string {
                if let direction = Direction(char) {
                    arrayOfDirections[i].append(direction)
                }
            }
        }
    }
    
    private func setupOutputProperties() {
        // initialize combination
        combination = Array(repeating: .k1, count: arrayOfDirections.count)
        
        // initialize arrayOfKeys
        arrayOfKeys = Array(repeating: [], count: arrayOfDirections.count)
        arrayOfKeys[0].append(currentKey)
    }
    
    /// Parse the input file and determine the numbers of each line
    private func run() {
        
        // step through each line
        for i in 0..<arrayOfDirections.count {
            
            // step through each direction
            for d in arrayOfDirections[i] {
                currentKey = currentKey.go(d)
                arrayOfKeys[i].append(currentKey)
            }
            
            combination[i] = currentKey
        }
        
//        print(combination)
    }
    
}
