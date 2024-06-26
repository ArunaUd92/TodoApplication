//
//  DataLayer.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit
import CoreData
import RxRelay

class DataLayer{
    
    let taskDataService = TaskDataService()
    let categoryDataService = CategoryDataService()
    
    var context:NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    //MARK: Task
    
    func getFeaturedTaks(for type:FeaturedType,isSortingEnabled:Bool,sortType:SortType) -> [Task]{
        return taskDataService.getFeaturedTasks(for: context, for: type,isSortingEnabled:isSortingEnabled,sortType:sortType)
    }
    
    func addTask(for taskDTO:TaskDTO,category:Category?) -> BehaviorRelay<(Bool,CustomError?)>{
        return taskDataService.addTask(taskDTO: taskDTO, category: category, for: context)
    }
    
    func getTasksForCategory(category:Category?,isSortingEnabled:Bool,sortType:SortType) -> [Task]{
        return taskDataService.getTasks(for: category, using: context,isSortingEnabled:isSortingEnabled,sortType:sortType)
    }
    
    func deleteTask(task:Task) -> BehaviorRelay<(Bool,CustomError?)>{
        taskDataService.deleteTask(task: task, using: context)
    }
    
    func updateTask(currentTask:Task,updatedTask:TaskDTO,updatedCategory:Category?) -> BehaviorRelay<(Bool,CustomError?)>{
        taskDataService.updateTask(task: currentTask, updatedCategory: updatedCategory, updatedTask: updatedTask, using: context)
    }
    
    func getTasksForDate(date:Date,isSortingEnabled:Bool,sortType:SortType) -> [Task]{
        taskDataService.getTasksForDate(date: date, using: context,isSortingEnabled:isSortingEnabled,sortType:sortType)
    }
    
    //MARK: Category
    
    func getAllCategories() -> [Category]{
        return categoryDataService.getAllCategories(for: context)
    }
    
    func getCategoryInfo() -> [CategoryInfo] {
        var categoryInfo = [CategoryInfo]()
        for category in getAllCategories(){
            let taskCount = getTasksForCategory(category: category,isSortingEnabled:false,sortType:.BY_NAME).count
            categoryInfo.append(CategoryInfo(name: category.name, taskCount: taskCount))
        }
        
        let tasks = taskDataService.getAllTasks(using: context)
        let unCategorizedTasks = tasks.filter {$0.category == nil}
        if unCategorizedTasks.count > 0{
            categoryInfo.append(CategoryInfo(name: nil, taskCount: unCategorizedTasks.count))
        }
        return categoryInfo
    }
    
    func addCategory(name:String) -> BehaviorRelay<(Bool,CustomError?)>{
        return categoryDataService.addCategory(name: name, for: context)
    }
    
    func getCategoryByName(name:String?) -> Category?{
        if name != nil{
            return categoryDataService.getCategory(for: name!, context: context)
        }else{
            return nil
        }
    }
    
    func deleteCategory(category:Category) -> BehaviorRelay<(Bool,CustomError?)>{
        return categoryDataService.deleteCategory(for: category, context: context)
    }
}
