//
//  ContentView.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var combo0 = "-"
    @State var combo1 = "-"
    @State var combo2 = "-"
    @State var combo3 = "-"
    @State var combo4 = "-"
    
    var body: some View {
        VStack {
            HStack {
                Text(combo0)
                Text(combo1)
                Text(combo2)
                Text(combo3)
                Text(combo4)
            }
            
            Button(action: {
                print("Running!")
                
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[0] {
                        
                        OperationQueue.main.addOperation {
                            self.combo0 = "\(k)"
                        }
                        print(k)
                        usleep(50000) // 0.005 of 1 second
                    }
                }
            }) {
                Image(systemName: "play")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
