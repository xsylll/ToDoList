//
//  NewToDoView.swift
//  ToDoList
//
//  Created by kayla saniei on 8/15/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $title) .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                    .padding()
            }
            Button(action: {
                
            }) {
                Text("Add")
            }
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
