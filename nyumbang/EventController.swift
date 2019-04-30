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
    
    @IBOutlet weak var categorySlider: UICollectionView!
    @IBOutlet weak var mostUrgentSlider: UICollectionView!
    @IBOutlet weak var pageControlImage: UIPageControl!
    var imageArr = ["palu","buku","pangan"]
    var mostLabel = ["Penggalangan dana amal indonesia","Event Charity Senayan","Berbagi untuk indonesia"]
    
    var imageCategory = ["category-clothes", "category-toys", "category-books", "category-pants", "category-clothes"]
    var categoryLabel = ["Clothes","Stationary", "Books", "Pants", "Clothes"]
    
    
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initCollectionView()
        imageSlideFunction()
        
//        imageSlideFunction()
    }
    
    func initCollectionView(){
        imageSlider.dataSource = self
        imageSlider.delegate = self
        
        mostUrgentSlider.dataSource = self
        mostUrgentSlider.delegate = self
        
        categorySlider.dataSource = self
        categorySlider.delegate = self
        
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

extension EventController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var counterPath = 0
        if (collectionView == self.imageSlider){
           counterPath = imageArr.count
        }else if collectionView == self.mostUrgentSlider {
            counterPath = mostLabel.count
        }else if collectionView == self.categorySlider {
            counterPath = categoryLabel.count
        }
        return counterPath
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.imageSlider {
            let cell = imageSlider.dequeueReusableCell(withReuseIdentifier: "cellTop", for: indexPath) as! ImageSliderCollectionCell
            cell.img.image = UIImage(named: imageArr[indexPath.row])
            return cell
        }else if collectionView == self.mostUrgentSlider {
            let mostCell = mostUrgentSlider.dequeueReusableCell(withReuseIdentifier: "mostCell", for: indexPath) as! MostUrgentCollectionCell
            
            mostCell.mostImage.image = UIImage(named: imageArr[indexPath.row])
            mostCell.mostTitle.text = mostLabel[indexPath.row]
            mostCell.mostImage.layer.cornerRadius = 3
            
            return mostCell
        }else {
            let categoryCell = categorySlider.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionCell
            categoryCell.categoryImage.image = UIImage(named: imageCategory[indexPath.row])
            
           categoryCell.categoryImage.layer.masksToBounds = false
            categoryCell.categoryImage.layer.cornerRadius = categoryCell.categoryImage.frame.height/2
            
            categoryCell.categoryImage.clipsToBounds = true
            
                categoryCell.categoryLbl.text = categoryLabel[indexPath.row]
            
            return categoryCell
        }
        
       
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (collectionView == self.imageSlider){
            let vc = storyboard?.instantiateViewController(withIdentifier: "EventDetailViewController") as! EventDetailViewController
            vc.sourceData.titleEvent = mostLabel[indexPath.row]
            vc.sourceData.nameFoundation = "ACT Foundation"
            vc.sourceData.photoEvent = UIImage(named: imageArr[indexPath.row])
            vc.sourceData.addressEvent = "Jl Panjang Utara 4"
            vc.sourceData.descriptionEvent = "aaaaaaaadasdsadsdasdadadasdasdadasdadsadasdasdadasdjsdoajdkamfakdmoadoawkdowkdoakdowakdokoakodaodkoawkdoawkdoakdowakdoawkdoakdoakdoawkdoakdoakdoakdoakdoawkdowkdowkdowkdowdkowdkowdkowkdowkdowkdowkdowdkowdkoadahfueiehgiejgoajdoakwdoawjdiowjgijaodjkioawhjfowfaiojdowjfiefjoakaowjfowfgjiaonfaiwnfowjfaiofaofjwaofmnwaiofnwofnwwofaiofjaifoafjoaf"
        
            self.navigationController?.pushViewController(vc, animated: true)
        }else if collectionView == self.mostUrgentSlider {
            let vc = storyboard?.instantiateViewController(withIdentifier: "EventDetailViewController") as! EventDetailViewController
            vc.sourceData.titleEvent = mostLabel[indexPath.row]
            vc.sourceData.nameFoundation = "ACT Foundation"
            vc.sourceData.photoEvent = UIImage(named: imageArr[indexPath.row])
            vc.sourceData.addressEvent = "Jl Panjang Utara 4"
            vc.sourceData.descriptionEvent = "aaaaaaaadasdsadsdasdadadasdasdadasdadsadasdasdadasdjsdoajdkamfakdmoadoawkdowkdoakdowakdokoakodaodkoawkdoawkdoakdowakdoawkdoakdoakdoawkdoakdoakdoakdoakdoawkdowkdowkdowkdowdkowdkowdkowkdowkdowkdowkdowdkowdkoadahfueiehgiejgoajdoakwdoawjdiowjgijaodjkioawhjfowfaiojdowjfiefjoakaowjfowfgjiaonfaiwnfowjfaiofaofjwaofmnwaiofnwofnwwofaiofjaifoafjoaf"
            
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
        
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToEventList" {
            if let cell = sender as? UICollectionViewCell {
                guard let EventVC = segue.destination as? EventViewController else { return }
                
//                let indexPath = // mentok disini
//                EventVC.navigationItem.title = mostLabel[indexPath.row] // buat ganti title nya
            }
        }
    }

    
    
}


//extension EventController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        if (collectionView == self.imageSlider){
//           return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        }else if (collectionView == self.mostUrgentCollection){
//            return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 15)
//        }else {
//            return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 15)
//        }
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        if (collectionView == self.imageSlider){
//            let size = imageSlider.frame.size
//            return CGSize(width: size.width, height: size.height)
//        }else if (collectionView == self.mostUrgentCollection){
//            let size = mostUrgentCollection.frame.size
//            return CGSize(width: size.width, height: size.height)
//        }else{
//            let size = categoryCollection.frame.size
//            return CGSize(width: size.width, height: size.height)
//        }
//
//
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        if (collectionView == self.imageSlider){
//            return 0.0
//        }else if (collectionView == self.mostUrgentCollection){
//            return 0.0
//        }else {
//
//            return 0.0
//        }
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        if (collectionView == self.imageSlider){
//            return 0.0
//        }else if (collectionView == self.mostUrgentCollection){
//            return 0.0
//        }else {
//            return 0.0
//        }
//    }
//
//}


