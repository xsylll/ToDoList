//
//  ToDoItem.swift
//  ToDoList
//
//  Created by kayla saniei on 8/15/23.
//

import Foundation

class toDoItem {
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
