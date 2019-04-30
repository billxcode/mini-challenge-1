//
//  DonationProcess.swift
//  nyumbang
//
//  Created by Steven on 4/29/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DonationProcess: UIViewController {

    @IBOutlet weak var locationAddress: UILabel!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var methodDeliveryCollectionView: UICollectionView!
    @IBOutlet weak var donateItemList: UITableView!
    struct data {
        var titleItem: [String] = []
        var descriptItem: [String] = []
        var amountTotal: [String] = []
        var iconName: [String] = []
        var methodName: [String] = []
        var methodImageName: [String] = []
        var priceMethod: String = ""
        var foundationLocation: String = ""
        
    }
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var estimateLocation: UILabel!
    var dataSource = data()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        initial()
    }
    
    func initial(){
        
        
        //        methodCollectionView.dataSource = self as! UICollectionViewDataSource
        //        methodCollectionView.delegate = self as! UICollectionViewDelegate
        
        methodDeliveryCollectionView.dataSource = self
        methodDeliveryCollectionView.delegate = self
        donateItemList.dataSource = self
        donateItemList.delegate = self
        
        
        dataSource.titleItem = ["a","b","c"]
        dataSource.descriptItem = ["a","b","c"]
        
        
        dataSource.amountTotal = ["0","0","0"]
        dataSource.iconName = ["palu","palu","palu"]
        
        dataSource.methodName = ["a","b","c"]
        dataSource.methodImageName = ["palu","palu","palu"]
        
        locationImage.image = UIImage(named: "Location")
        locationAddress.text = "Jl.Panjang Utara no 4"
        
        navigationButton()
        
    }
    
    // MARK: - Table view data source
    func navigationButton(){
        let DonateButton = UIBarButtonItem(title: "Donate", style: .done, target: self, action: #selector(donateNow))
        self.navigationItem.rightBarButtonItem = DonateButton
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelNow))
        self.navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc func donateNow(){
        var total = 0
        for i in dataSource.amountTotal{
            total += Int(i)!
        }
        if total <= 0 {
            
            let alert = UIAlertController(title: "No Donation Item", message: "You haven't set your item", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert,animated: true)
        }else{
            //perform segue
        }
        
    }
    
    @objc func cancelNow(){
        //segue
        
    }
    
    
    

}

extension DonationProcess: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.titleItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemChooseCell", for: indexPath) as! ChooseItemCell
        
        cell.imageChooseItem.image = UIImage(named: dataSource.iconName[indexPath.row])
        cell.titleChooseItem.text = dataSource.titleItem[indexPath.row]
        cell.descriptionChooseItem.text = dataSource.descriptItem[indexPath.row]
        cell.amountLblChooseItem.text = "Amount"
        cell.inputAmountChooseItem.text = dataSource.amountTotal[indexPath.row]
        cell.delegate = self
        cell.index = indexPath
        
        
        return cell
    }
}

extension DonationProcess: ChooseItemDelegate {
    func clicked(text: String, index: IndexPath) {
        dataSource.amountTotal[index.row] = text
        print(index.row)
    }
}

extension DonationProcess: UICollectionViewDelegate,UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.methodName.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "methodCell", for: indexPath) as! methodDeliveryCollectionCell
        
        cell.imageDeliveryMethod.image = UIImage(named: dataSource.methodImageName[indexPath.row])
        cell.titleDelivery.text = dataSource.methodName[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        let cellToSelect: UICollectionViewCell = methodDeliveryCollectionView.cellForItem(at: indexPath)!
        
        cellToSelect.contentView.backgroundColor = UIColor.white
        
        cellToSelect.contentView.backgroundColor = UIColor.green
        
        estimateLocation.text = "Estimate Location 10 Km"
        priceLbl.text = "Rp. 10.000"
    }


}
