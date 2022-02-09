//
//  TaskTypeTableViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class TaskTypeTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var categoryNameLabel: BodyLabel!
    @IBOutlet weak var taskCountLabel: BodyLabel!
    
    var taskTypeVM:TaskTypeViewModel!{
        didSet{
            containerView.backgroundColor = .BackgroundColor
            UIHelper.addShadow(to: holderView)
            UIHelper.addCornerRadius(to: holderView)
            categoryNameLabel.text = taskTypeVM.name
            taskCountLabel.text = taskTypeVM.count.description
        }
    }
}
