//
//  CarouselCollectionViewCell.swift
//  CarouselEffect
//
//  Created by YoNa on 2021/03/06.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var carouselView: UIView!
    @IBOutlet weak var carouselImageView: UIImageView!
    @IBOutlet weak var carouselTitle: UILabel!
    @IBOutlet weak var carouselSubTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        DispatchQueue.main.async {
            self.carouselView.layer.cornerRadius = 15
            self.carouselView.layer.shadowColor = UIColor.lightGray.cgColor
            self.carouselView.layer.shadowOpacity = 0.5
            self.carouselView.layer.shadowRadius = 5.0
            self.carouselView.layer.shadowOffset = .zero
            self.carouselView.layer.masksToBounds = false
            self.carouselView.layer.shadowPath = UIBezierPath(rect: self.carouselView.bounds).cgPath
            self.carouselView.layer.shouldRasterize = true
        }
    }

}
