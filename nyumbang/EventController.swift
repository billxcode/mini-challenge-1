//
//  EventController.swift
//  nyumbang
//
//  Created by Steven on 4/26/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventController: UIViewController {

    @IBOutlet weak var imageSlider: UICollectionView!
    
    @IBOutlet weak var pageControlImage: UIPageControl!
    var imageArr = ["palu","buku","pangan"]
    
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageSlider.dataSource = self
        imageSlideFunction()
    }
    
    func imageSlideFunction(){
        pageControlImage.numberOfPages = imageArr.count
        pageControlImage.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func changeImage(){
        if counter < imageArr.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.imageSlider.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            counter += 1
            
            pageControlImage.currentPage = counter
            
        }else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.imageSlider.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControlImage.currentPage = counter
            counter = 1
        }
        
    }
    

}

extension EventController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = imageSlider.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageSliderCollectionCell
        cell.img.image = UIImage(named: imageArr[indexPath.row])
        return cell
    }
    
    
}

extension EventController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = imageSlider.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
}


