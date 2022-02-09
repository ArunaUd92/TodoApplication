//
//  Task.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
import CoreData

protocol Entitiable {
    static var entityName:String {get}
}

class Task:NSManagedObject,Entitiable{
    
    @NSManaged var name:String
    @NSManaged var isFavourite:Bool
    @NSManaged var dateTime:Date
    @NSManaged var isReminder:Bool
    @NSManaged var category:Category?
    
    static var entityName: String {return "Task"}
}

