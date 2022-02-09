//
//  TodoApplicationTests.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import XCTest
import CoreData
import RxRelay

@testable import TodoApplication

class TodoApplicationTests: XCTestCase {

    func testManagedObjectContext(){
        createContainer { (container) in
            XCTAssertNotNil(container.viewContext)
        }
    }
}

func createContainer(onCompleted:@escaping (_ container:NSPersistentContainer)->Void){
    let container = NSPersistentContainer(name: "ToDo")
    let description = NSPersistentStoreDescription()
    description.type = NSInMemoryStoreType
    description.shouldAddStoreAsynchronously = false
    container.persistentStoreDescriptions = [description]
    container.loadPersistentStores { (description, error) in
        if let e = error{
            fatalError(e.localizedDescription)
        }
        onCompleted(container)
    }

}
