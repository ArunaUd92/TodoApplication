//
//  CalenderCollectionViewViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
class CalenderCollectionViewViewModel{
    
    var day:Day
    
    init(day:Day) {
        self.day = day
    }
    
    var name:String{
        return day.name
    }
    
    var dateString:String{
        return day.date
    }
    
    var isSelected:Bool{
        return day.isSelected
    }
    
    
}
