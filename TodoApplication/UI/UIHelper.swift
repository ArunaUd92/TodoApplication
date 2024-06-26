//
//  UIHelper.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit
import NotificationBannerSwift

class UIHelper{
    
    static private func makeViewController(storyBoardName:String, viewControllerName:String) -> UIViewController {
        return UIStoryboard(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier: viewControllerName)
    }
    
    static func makeViewController<T:UIViewController>(in storyboard:UIConstant.StoryBoard = .Main,viewControllerName:UIConstant.StoryBoardID) -> T{
        return makeViewController(storyBoardName: storyboard.rawValue, viewControllerName: viewControllerName.rawValue) as! T
    }
    
    static func hide(view:UIView){
        view.isHidden = true
    }
    
    static func show(view:UIView){
        view.isHidden = false
    }
    
    static func addShadow(to view:UIView){
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 3.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: -1.0, height: -1.0)
        view.layer.shadowOpacity = 0.4
    }
    
    static func addCornerRadius(to view:UIView,withRadius radius:CGFloat = 4, withborder:Bool = false,using borderColor:CGColor = UIColor.black.cgColor){
        view.layer.cornerRadius = radius
        if (withborder){
            view.layer.borderWidth = 0.5
            view.layer.borderColor = borderColor
        }
    }
    
    static func disableView(view:UIView){
        view.isUserInteractionEnabled = false
        view.alpha = 0.5
    }
    
    static func enableView(view:UIView){
        view.isUserInteractionEnabled = true
        view.alpha = 1.0
    }
    
    static func circular(view:UIView,devider:CGFloat = 2){
        view.layer.borderWidth = 0.0
        view.layer.masksToBounds = false
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = view.frame.height/devider
        view.clipsToBounds = true
    }
    
    static func makeBanner(error:CustomError){
        DispatchQueue.main.async {
            let bannerTitle:String = "Error!"
            let banner = GrowingNotificationBanner(title: error.title == nil ? bannerTitle : error.title, subtitle: error.message, style: .danger)
            banner.show()
        }
    }
}
