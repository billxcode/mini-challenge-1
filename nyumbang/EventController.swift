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
    
    var imageArr = ["palu","buku","pangan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    

}

extension EventController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = imageSlider.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageSliderCollectionCell
        
        cell?.img.image = UIImage(named: imageArr[indexPath.row])
        return cell!
    }
    
    
}
