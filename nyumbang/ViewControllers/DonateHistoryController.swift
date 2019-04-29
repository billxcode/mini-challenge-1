//
//  DonateHistoryController.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 27/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DonateHistoryController: UIViewController {
    
    @IBOutlet weak var tableViewHistory: UITableView!
    
    var donationHistory: [Donation] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        donationHistory = createDonationHistory()
        
    }
    
    func createDonationHistory() -> [Donation] {
        
        let donation1: Donation = Donation.init(name: "Donation 1", reaming: "", status: "Arived", date: "2 April, 2:16 PM")
        let donation2: Donation = Donation.init(name: "Donation 2", reaming: "", status: "Canceld", date: "2 April, 2:16 PM")
        let donation3: Donation = Donation.init(name: "Donation 3", reaming: "", status: "Arived", date: "2 April, 2:16 PM")
        
        return [donation1, donation2, donation3]
        
    }
    
}

extension DonateHistoryController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return donationHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let donationHistoryRow = donationHistory[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "donateHistory") as! OnGoingDonateTableViewCell
        cell.setDonation(donation: donationHistoryRow)
        return cell

        
    }
    
    
    
}
