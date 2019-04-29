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
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var reamingLabel: UITextView!
    var donation: Donation!
    
    func setDonation(donation: Donation) {
        
        self.donation = donation
        eventNameLabel.text = donation.eventName
        reamingLabel = setReamingLabel(donation.eventReaming)
        statusLabel.text = donation.statusDonate
        dateLabel.text = donation.dateDonate
        
//        self.selectedBackgroundView?.backgroundColor = nil
        
    }
    
    func setReamingLabel(_ reaming: String) -> UITextView {
        
        reamingLabel.text = reaming
        reamingLabel.textContainerInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        reamingLabel.layer.masksToBounds = true
        reamingLabel.layer.cornerRadius = 15
        
        if reaming == "Overdue" {
            reamingLabel.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }else if reaming == "2 Days Left" {
            reamingLabel.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.768627451, blue: 0.05882352941, alpha: 1)
        }else{
            reamingLabel.backgroundColor = #colorLiteral(red: 0.3921568627, green: 0.7529411765, blue: 0.01176470588, alpha: 1)
        }
        
        
        return reamingLabel
        
    }
    
}

//class PaddingLabel: UILabel {
//    override var intrinsicContentSize: CGSize {
//        let originalContentSize = super.intrinsicContentSize
//
//        return CGSize(width: originalContentSize.width + 20, height: originalContentSize.height)
//    }
//}
