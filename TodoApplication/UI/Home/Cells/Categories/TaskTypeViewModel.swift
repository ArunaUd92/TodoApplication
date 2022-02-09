//
//  TaskTypeViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation

class TaskTypeViewModel{
    
    var categoryInfo:CategoryInfo
    
    init(categoryInfo:CategoryInfo) {
        self.categoryInfo = categoryInfo
    }
    
    var name:String {
        categoryInfo.name ?? "Uncategorized"
    }
    
    var count:Int{
        categoryInfo.taskCount
    }
    
}

