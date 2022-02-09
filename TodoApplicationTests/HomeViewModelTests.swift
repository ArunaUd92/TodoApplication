//
//  HomeViewModelTests.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import XCTest
@testable import TodoApplication

class HomeViewModelTests: XCTestCase {
    
    var sut:HomeViewModel!
    
    override func setUp() {
        sut = HomeViewModel()
        createContainer { (container) in
            self.sut.modelLayer.dataLayer = TestDataLayer(container: container)
        }
    }
    
    override  func tearDown() {
        sut = nil
    }
    
    private func addCategory(){
        sut.modelLayer.dataLayer.addCategory(name: "Test")
    }
    
    func testFeaturedItems(){
        sut.getFeaturedItems()
        XCTAssertTrue(sut.featuredItems.count > 0)
    }
    
    func testCategoryInfo(){
        addCategory()
        sut.getcategoryInfo()
        XCTAssertTrue(sut.categoryInfo.value.count == 1)
    }
}
