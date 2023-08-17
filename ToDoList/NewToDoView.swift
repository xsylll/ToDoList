//
//  NewToDoView.swift
//  ToDoList
//
//  Created by kayla saniei on 8/15/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask : Bool
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
                    
            }
            .padding()
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
            }) {
                Text("Add")
            }
            .padding()
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        }

}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask: .constant(true)
        )
    }
}
