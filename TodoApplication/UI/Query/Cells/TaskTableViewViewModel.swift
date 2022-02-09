//
//  TaskTableViewViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
class TaskTableViewViewModel{
    
    var task:Task
    
    init(task:Task) {
        self.task = task
    }
    
    var taskName:String{
        return task.name
    }
    
    var dateString:String{
        return task.dateTime.formatted
    }
}
