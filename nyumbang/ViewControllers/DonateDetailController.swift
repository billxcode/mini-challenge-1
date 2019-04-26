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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventNameLabel.text = donation.eventName
        
    }
    

}
