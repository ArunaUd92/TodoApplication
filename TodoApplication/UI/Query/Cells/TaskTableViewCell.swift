//
//  TaskTableViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundHolerView: UIView!
    @IBOutlet weak var taskLabel: BodyLabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    var taskTableViewVM:TaskTableViewViewModel!{
        didSet{
            setupUI()
            taskLabel.text = taskTableViewVM.taskName
            dateTimeLabel.text = taskTableViewVM.dateString
        }
    }
    
    private func setupUI(){
        UIHelper.addCornerRadius(to: backgroundHolerView)
        dateTimeLabel.font = UIFont(name: "Montserrat-Thin", size: 11)
    }
    
}
