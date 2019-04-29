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

    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.isHidden = false
        conditionTable.isHidden = true
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
