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
    @State var currentCount = 0
    
    let sleepTime: UInt32 = 15000 // 0.0025 of 1 second
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(combo0)
                Text(combo1)
                Text(combo2)
                Text(combo3)
                Text(combo4)
            }
            
            Button(action: {
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[0] {
                        
                        OperationQueue.main.addOperation {
                            self.combo0 = "\(k)"
                            self.currentCount += 1
                        }
                        usleep(self.sleepTime)
                    }
                }
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[1] {
                        
                        OperationQueue.main.addOperation {
                            self.combo1 = "\(k)"
                            self.currentCount += 1
                        }
                        usleep(self.sleepTime)
                    }
                }
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[2] {
                        
                        OperationQueue.main.addOperation {
                            self.combo2 = "\(k)"
                            self.currentCount += 1
                        }
                        usleep(self.sleepTime)
                    }
                }
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[3] {
                        
                        OperationQueue.main.addOperation {
                            self.combo3 = "\(k)"
                            self.currentCount += 1
                        }
                        usleep(self.sleepTime)
                    }
                }
                OperationQueue().addOperation {
                    for k in KeyController.shared.arrayOfKeys[4] {
                        
                        OperationQueue.main.addOperation {
                            self.combo4 = "\(k)"
                            self.currentCount += 1
                        }
                        usleep(self.sleepTime)
                    }
                }
            }) {
                Image(systemName: "play")
            }
            Spacer()
            HStack {
                Text("\(currentCount)")
                Text("\(KeyController.shared.inputFileCharCont)")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
