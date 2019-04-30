//
//  EventDetailViewController.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 29/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    @IBOutlet weak var descriptionView: UIView!
    @IBOutlet weak var conditionTable: UITableView!
    @IBOutlet weak var photoEvent: UIImageView!
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var nameFoundation: UILabel!
    @IBOutlet weak var addressEvent: UILabel!
    @IBOutlet weak var descriptionEvent: UILabel!
    
    struct data {
        var photoEvent: UIImage!
        var titleEvent: String!
        var nameFoundation: String!
        var addressEvent: String!
        var descriptionEvent: String!
        
    }
    
    var sourceData = data()
    
    var eventFoundation: Event!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.isHidden = false
        conditionTable.isHidden = true
        photoEvent.image = eventFoundation?.thumbnail
        titleEvent.text = eventFoundation?.title
        nameFoundation.text = "ACT FOR HUMANITY"
        addressEvent.text = eventFoundation?.place
        descriptionEvent.text = eventFoundation?.description
        if eventFoundation?.title == nil {
            initSource()
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabEventDetail(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            descriptionView.isHidden = false
            conditionTable.isHidden = true
        }else{
            conditionTable.isHidden = false
            descriptionView.isHidden = true
        }
    }
    
    func initSource(){
        photoEvent.image = sourceData.photoEvent
        titleEvent.text = sourceData.titleEvent
        nameFoundation.text = sourceData.nameFoundation
        addressEvent.text = sourceData.addressEvent
        descriptionEvent.text = sourceData.descriptionEvent
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
