//
//  ContentView.swift
//  AOC2016-D02
//
//  Created by Theo Vora on 7/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonTracker = "\(KeyController.shared.arrayOfDirections[3])"
    
    var body: some View {
        VStack {
            Text(buttonTracker)
            Button(action: {
                self.buttonTracker = "You pressed Button 1"
            }) {
                Text("Button 1")
            }
            
            Button(action: {
                self.buttonTracker = "You pressed Button 2"
            }) {
                Text("Button 2")
            }
            
            Button(action: {
                self.buttonTracker = "You pressed the heart"
            }) {
                Image(systemName: "heart")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
