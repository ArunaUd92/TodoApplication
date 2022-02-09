//
//  CategoryDTO.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation

class CategoryDTO:Equatable{
    
    var name:String
    var isSelected:Bool
    
    init(name:String,isSelected:Bool) {
        self.name = name
        self.isSelected = isSelected
    }
    
    static func == (lhs: CategoryDTO, rhs: CategoryDTO) -> Bool {
        return lhs.name == rhs.name
    }
}
