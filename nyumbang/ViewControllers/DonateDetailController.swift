//
//  DonateDetailController.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 26/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DonateDetailController: UIViewController {

    var donation: Donation!
    
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var openReportBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventNameLabel.text = donation.eventName
        
        statusLabel.layer.masksToBounds = true
        statusLabel.layer.cornerRadius = 10
        
        openReportBtn.layer.masksToBounds = true
        openReportBtn.layer.cornerRadius = 5
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let backItem = UIBarButtonItem()
        backItem.title = "Details"
        navigationItem.backBarButtonItem = backItem
        
    }
    

}
