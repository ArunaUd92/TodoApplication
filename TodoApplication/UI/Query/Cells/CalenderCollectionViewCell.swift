//
//  CalenderCollectionViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class CalenderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var selectionIndicatorView: UIView!
    
    var calenderCollectionViewVM:CalenderCollectionViewViewModel!{
        didSet{
            setupUI()
            dayLabel.text = calenderCollectionViewVM.name
            dateLabel.text = calenderCollectionViewVM.dateString
        }
    }
    
    private func setupUI(){
        selectionIndicatorView.backgroundColor = .BackgroundColor
        UIHelper.circular(view: selectionIndicatorView)
        if calenderCollectionViewVM.isSelected{
            UIHelper.show(view: selectionIndicatorView)
            dayLabel.font = UIFont(name: "Montserrat-Medium", size: 18)
            dateLabel.font = UIFont(name: "Montserrat-Medium", size: 18)
        }else{
            UIHelper.hide(view: selectionIndicatorView)
            dayLabel.font = UIFont(name: "Montserrat-Regular", size: 18.0)
            dateLabel.font = UIFont(name: "Montserrat-Regular", size: 18.0)
        }
    }
    
}
