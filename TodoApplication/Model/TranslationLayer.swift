//
//  TranslationLayer.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
class TranslationLayer{
    
    func convetToCategoryDTO(categories:[Category]) -> [CategoryDTO]{
        var dtos = [CategoryDTO]()
        for category in categories{
            dtos.append(CategoryDTO(name: category.name, isSelected: false))
        }
        return dtos
    }
}
