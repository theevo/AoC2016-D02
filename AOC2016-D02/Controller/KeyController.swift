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
    
    var combination = [Key]()
    
    private var currentKey = Key.k5
    
    var arrayOfDirections = [[Direction]]()
    
    init() {
        loadInputFile()
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
    
    private func run() {
        print("release the secret weapon!")
        
        combination = Array(repeating: .k1, count: arrayOfDirections.count)
    }
    
}
