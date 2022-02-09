//
//  HomeViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation
import RxRelay
import RxSwift

class HomeViewModel{
    
    let modelLayer = ModelLayer()
    let bag = DisposeBag()
    
    var title:BehaviorSubject<String> = BehaviorSubject<String>(value: "")
    var featuredItems:[Featured]!
    var categoryInfo:BehaviorRelay<[CategoryInfo]> = BehaviorRelay<[CategoryInfo]>(value: [])
    var todysTaskCount:Int!
    
    
    func getFeaturedItems(){
        Featured.getFeatures().asObservable().subscribe(onNext: { items in
            self.featuredItems = items
        }).disposed(by: bag)
    }
    
    func getcategoryInfo(){
        modelLayer.getCategoryDetails().asObservable().subscribe(onNext: { categoryInformation in
            self.categoryInfo.accept(categoryInformation)
        }).disposed(by: bag)
    }
    
    
    func getTodysTaskCount(){
        modelLayer.getTasksForToday().asObservable().subscribe(onNext: { tasks in
            self.todysTaskCount = tasks.count
            self.loadData()
        }).disposed(by: bag)
    }
    
    private func loadData(){
        if todysTaskCount! == 0{
            title.onNext("Hey, You've got no tasks today.")
        }else if todysTaskCount! == 1{
            title.onNext("Hey, You've got \(todysTaskCount.description) task today.")
        }else{
            title.onNext("Hey, You've got \(todysTaskCount.description) tasks today.")
        }
    }
}
