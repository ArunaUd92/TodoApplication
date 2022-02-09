//
//  FeaturedCollectionViewViewModel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class FeaturedCollectionViewViewModel {
    
    var featuredItem:Featured
    
    init(featuredItem:Featured) {
        self.featuredItem = featuredItem
    }
    
    var name:String{
        featuredItem.name
    }
    
    var subTitile:String?{
        return featuredItem.subTitile
    }
    
    var itemImage:UIImage?{
        return featuredItem.image
    }
}
