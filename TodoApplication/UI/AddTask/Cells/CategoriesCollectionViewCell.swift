//
//  CategoriesCollectionViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var categoryLabel: SmallTitleLabel!
    
    var category:CategoryDTO!{
        didSet{
            setupUI()
            categoryLabel.text = category.name
            if category.isSelected{
                holderView.backgroundColor = .BackgroundColor
            }else{
                holderView.backgroundColor = .white
            }
        }
    }
    
    private func setupUI(){
        UIHelper.addCornerRadius(to: holderView, withborder: true, using: UIColor.black.cgColor)
    }
}
