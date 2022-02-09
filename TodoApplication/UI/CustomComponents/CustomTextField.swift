//
//  CustomTextField.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    override func prepareForInterfaceBuilder() {
        commonInit()
    }
    
    fileprivate func commonInit(){
        self.font = UIFont(name: "Montserrat-Medium", size: 17.0)
        self.clearButtonMode = .whileEditing
    }
    
}

