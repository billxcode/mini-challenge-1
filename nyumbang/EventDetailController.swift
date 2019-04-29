//
//  EventDetailController.swift
//  nyumbang
//
//  Created by Steven on 4/28/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventDetailController: UITableViewController {

    @IBOutlet weak var eventDetailPageControl: UIPageControl!
    @IBOutlet weak var eventImageSlider: UICollectionView!
    
    @IBOutlet weak var donateBtn: UIButton!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var eventFoundation: UILabel!
    @IBOutlet weak var eventTitle: UILabel!
    
    struct data {
        var imageData: [String] = []
        var eventTitleTxt: String = ""
        var eventFoundationTxt: String = ""
        var locationImageName: String = ""
        var locationTxt: String = ""
        var addressTxt: String = ""
        var itemCategoryList: [String] = []
        var donationDetail: String = ""
        
        
    }
    
    var timer = Timer()
    var counter = 0
    // init data from struct
    var sourceData = data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let myView = EventDetailView()
//
//        self.viewSegmented.addSubview(myView)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        initSource()
        imageSlideFunction()
        addressLbl.text = "Steven"
    }
    
    @IBAction func donateBtn(_ sender: Any) {
    }
    
    func initSource(){
        eventImageSlider.dataSource = self as! UICollectionViewDataSource
        eventImageSlider.delegate = self as! UICollectionViewDelegate
        
        eventTitle.text = sourceData.eventTitleTxt
        eventFoundation.text = sourceData.eventFoundationTxt
        locationImage.image = UIImage(named: sourceData.locationImageName)
        locationLbl.text = sourceData.locationTxt
        addressLbl.text = sourceData.addressTxt
        
        
        
    }
    func imageSlideFunction(){
        eventDetailPageControl.numberOfPages = sourceData.imageData.count
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func changeImage(){
        if counter < sourceData.imageData.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.eventImageSlider.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            counter += 1
            
            eventDetailPageControl.currentPage = counter
            
        }else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.eventImageSlider.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            eventDetailPageControl.currentPage = counter
            counter = 1
        }
        
    }
    
    
    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension EventDetailController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sourceData.imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = eventImageSlider.dequeueReusableCell(withReuseIdentifier: "eventCollectionCell", for: indexPath) as! EventDetailCollectionCell
        cell.imageEventDetail.image = UIImage(named: sourceData.imageData[indexPath.row])
        
        return cell
    }
    
    
}
