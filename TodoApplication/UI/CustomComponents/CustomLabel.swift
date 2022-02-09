//
//  CustomLabel.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit


//MARK: WelcomeLabel
@IBDesignable
class WelcomeLabel:UILabel{
    
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
        self.font = UIFont(name: "Montserrat-Medium", size: 23.0)
        if #available(iOS 13.0, *) {
            self.textColor = .label
        } else {
            self.textColor = .black
        }
    }
}


//MARK: TitleLabel
@IBDesignable
class TitleLabel:UILabel{
    
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
        self.font = UIFont(name: "Montserrat-Bold", size: 30.0)
        if #available(iOS 13.0, *) {
            self.textColor = .label
        } else {
            self.textColor = .black
        }
    }
}


//MARK: BodyLabel
@IBDesignable
class BodyLabel:UILabel{
    
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
        self.font = UIFont(name: "Montserrat-Regular", size: 18.0)
        if #available(iOS 13.0, *) {
            self.textColor = .label
        } else {
            self.textColor = .black
        }
    }
}

//MARK: TableHeaderLabel
@IBDesignable
class TableHeaderLabel:UILabel{
    
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
        self.font = UIFont(name: "Montserrat-Regular", size: 23.0)
        if #available(iOS 13.0, *) {
            self.textColor = .label
        } else {
            self.textColor = .black
        }
    }
}


//MARK: SmallTitleLabel
@IBDesignable
class SmallTitleLabel:UILabel{
    
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
        self.font = UIFont(name: "Montserrat-Bold", size: 11.0)
        if #available(iOS 13.0, *) {
            self.textColor = .label
        } else {
            self.textColor = .black
        }
    }
}
