//
//  ContentView.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var combo0 = "\(KeyController.shared.combination[0])"
    @State var combo1 = "\(KeyController.shared.combination[1])"
    @State var combo2 = "\(KeyController.shared.combination[2])"
    @State var combo3 = "\(KeyController.shared.combination[3])"
    @State var combo4 = "\(KeyController.shared.combination[4])"
    
    var body: some View {
        HStack {
            Text(combo0)
            Text(combo1)
            Text(combo2)
            Text(combo3)
            Text(combo4)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
