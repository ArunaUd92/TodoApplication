//
//  FeaturedCollectionViewCell.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var featureImageView: UIImageView!
    @IBOutlet weak var featureDescriptionLabel: SmallTitleLabel!
    @IBOutlet weak var featureHeaderLabel: BodyLabel!
    
   var featuredCollectionViewViewModel:FeaturedCollectionViewViewModel!{
        didSet{
            setupUI()
            featureHeaderLabel.text = featuredCollectionViewViewModel.name
            if let image = featuredCollectionViewViewModel.itemImage{
                featureImageView.image = image
                UIHelper.show(view: featureImageView)
                UIHelper.hide(view: featureDescriptionLabel)
            }
            if let subtitle = featuredCollectionViewViewModel.subTitile{
                featureDescriptionLabel.text = subtitle
                UIHelper.show(view: featureDescriptionLabel)
                UIHelper.hide(view: featureImageView)
            }
        }
    }
    
    private func setupUI(){
        containerView.backgroundColor = .BackgroundColor
        UIHelper.addShadow(to: holderView)
        UIHelper.addCornerRadius(to: holderView,withRadius: 15)
    }
    
}
