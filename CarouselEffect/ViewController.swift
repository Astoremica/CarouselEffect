//
//  ViewController.swift
//  CarouselEffect
//
//  Created by YoNa on 2021/03/06.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var carouselCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carouselCollectionView.register(UINib.init(nibName: "CarouselCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "carouselCell")
        
        let floawLayout = UPCarouselFlowLayout()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 100.0, height: carouselCollectionView.frame.size.height - 20)
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 1.0
        floawLayout.sideItemAlpha = 1.0
        
        floawLayout.spacingMode = .fixed(spacing: 5.0)
     
        carouselCollectionView.collectionViewLayout = floawLayout
        carouselCollectionView.delegate = self
        carouselCollectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carouselCollectionView.dequeueReusableCell(withReuseIdentifier:"carouselCell" , for: indexPath) as! CarouselCollectionViewCell
        cell.carouselTitle.text = "本のタイトル\(indexPath.row)"
        cell.carouselSubTitle.text = "サブタイトル-\(indexPath.row)"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

