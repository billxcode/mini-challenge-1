//
//  OnGoingDonateTableViewCell.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 26/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class OnGoingDonateTableViewCell: UITableViewCell {

    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var reamingLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func setDonation(donation: Donation) {
        eventNameLabel.text = donation.eventName
//        reamingLabel.text = donation.eventReaming
//        statusLabel.text = donation.statusDonate
//        dateLabel.text = donation.dateDonate
    }
}
