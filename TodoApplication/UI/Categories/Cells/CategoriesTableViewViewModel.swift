//
//  CategoriesTableViewViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
class CategoriesTableViewViewModel{
    
    var category:Category
    
    init(category:Category) {
        self.category = category
    }
    
    var name:String{
        return category.name
    }
}
