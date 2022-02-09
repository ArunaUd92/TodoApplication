//
//  Category.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
import CoreData


enum CategoryType:String{
    case Uncategorized = "Uncategorized"
}

class Category:NSManagedObject,Entitiable{
    
    @NSManaged var name:String
    @NSManaged var tasks:NSSet?
    
    static var entityName: String {return "Category" }
    
}

