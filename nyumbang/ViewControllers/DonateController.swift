//
//  DonateController.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 25/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DonateController: UIViewController {
    
    var donations: [Donation] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        donations = createDonations()
        
        let iconClock = UIImage(named: "clockIcon")
        let historyButton = UIBarButtonItem(image: iconClock, landscapeImagePhone: iconClock, style: .plain, target: self, action: #selector(toHistroyButton))
        
        self.navigationItem.rightBarButtonItem = historyButton
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        
    }
    
    @objc func toHistroyButton(_ sender: Any) {
        performSegue(withIdentifier: "donateHistorySegue", sender: self)

    }
    
    func createDonations() -> [Donation] {
        
        let donation1 = Donation.init(name: "Galang Dana Untuk Tsunami", reaming: "4 Days Left", status: "Finding Driver", date: "6 April, 2:16 PM")
        let donation2 = Donation.init(name: "Event Name", reaming: "2 Days Left", status: "Finding Driver", date: "6 April, 2:16 PM")
        let donation3 = Donation.init(name: "Event Name", reaming: "Overdue", status: "Finding Driver", date: "28 March, 09:29 PM")
        
        return [donation1, donation2, donation3]
    }

}

extension DonateController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return donations.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let donationOnGoing = donations[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "onGoingDonationCell") as! OnGoingDonateTableViewCell
        cell.setDonation(donation: donationOnGoing)
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == nil {
            
            let indexPath = tableView.indexPathForSelectedRow
            let currentDonation = tableView.cellForRow(at: indexPath!) as! OnGoingDonateTableViewCell
            
            guard let donateDetailVC = segue.destination as? DonateDetailController else { return }
            
            donateDetailVC.donation = currentDonation.donation
            
        }
        
    }
    
}
