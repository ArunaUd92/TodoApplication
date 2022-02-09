//
//  CategoriesTableViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contentViewHolderView: UIView!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var categoryNameLabel: BodyLabel!
    
    var categoriesTableViewVM:CategoriesTableViewViewModel!{
        didSet{
            setupUI()
            categoryNameLabel.text = categoriesTableViewVM.name
        }
    }
    
    private func setupUI(){
        contentViewHolderView.backgroundColor = .BackgroundColor
        UIHelper.addCornerRadius(to: holderView)
    }
}
