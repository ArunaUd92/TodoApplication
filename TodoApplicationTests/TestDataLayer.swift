//
//  TestDataLayer.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions


import CoreData
@testable import TodoApplication

class TestDataLayer:DataLayer{
    
    var container:NSPersistentContainer
    
    init(container:NSPersistentContainer) {
        self.container = container
    }
    
    override var context: NSManagedObjectContext{
        return container.viewContext
    }
}
