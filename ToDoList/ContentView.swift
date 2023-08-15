//
//  ContentView.swift
//  ToDoList
//
//  Created by kayla saniei on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List") .font(.system(size: 40)) .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("+")
                }
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
