//
//  CustomButton.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

@IBDesignable
class CustomButton:UIButton{
    
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
        layer.cornerRadius = 10
        layer.masksToBounds = true
        if #available(iOS 13.0, *) {
            self.backgroundColor = .label
        } else {
            self.backgroundColor = .black
        }
        if #available(iOS 13.0, *) {
            self.setTitleColor(.systemBackground, for: .normal)
        } else {
            self.setTitleColor(.white, for: .normal)
        }
        self.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 15.0)
    }
}
