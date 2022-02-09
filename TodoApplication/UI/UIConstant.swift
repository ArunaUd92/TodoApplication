//
//  UIConstant.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
class UIConstant{
    
    enum StoryBoardID:String{
        case HomeVC = "homeVC"
        case AddTaskVC = "addTaskVC"
        case QueryVC = "queryVC"
        case CategoriesVC = "categoriesVC"
    }
    
    enum StoryBoard:String{
        case Main = "Main"
    }
    
    enum Cell:String{
        case FeaturedTableViewCell = "FeaturedTableViewCell"
        case FeaturedCollectionViewCell = "featuredCVCell"
        case TaskTypeTableViewCell = "taskTypeTVCell"
        case TaskTableViewCell = "taskTVCell"
        case CalenderCollectionViewCell = "calenderCVCell"
        case CategoriesCollectionViewCell = "categoriesCVCell"
        case CategoriesTableViewCell = "categoriesTVCell"
    }
}
