//
//  CategoriesViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
import RxRelay
import RxSwift

class CategoriesViewModel{
    
    let modelLayer = ModelLayer()
    let bag = DisposeBag()
    
    var selectedCategory:Category!
    
    var categories:BehaviorRelay<[Category]> = BehaviorRelay<[Category]>(value: [])
    
    func getCategories(){
        modelLayer.getCategories().asObservable().subscribe(onNext: { categories in
            self.categories.accept(categories)
        }).disposed(by: bag)
    }
    
    func addCategory(for name:String) -> BehaviorRelay<(Bool,CustomError?)>{
        let filetredCategory = categories.value.filter{ $0.name == name.trim}
        if filetredCategory.count > 0{
            return BehaviorRelay<(Bool,CustomError?)>(value: (false,CustomError(title: nil, message: "\(name) category already exist")))
        }else{
            return modelLayer.addCategory(name: name.trim)
        }
    }
    
    func deleteCategory() -> BehaviorRelay<(Bool,CustomError?)>{
        return modelLayer.dataLayer.deleteCategory(category: selectedCategory)
    }
}
