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
    @IBOutlet weak var navigationBarItem: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarItem.title = self.title
        
        donations = createDonations()
        
    }
    
    func createDonations() -> [Donation] {
        
        let donation1 = Donation.init(eventName: "Galang Dana Untuk Tsunami")
        let donation2 = Donation.init(eventName: "Galang Dana Untuk Tsunami")
        
        return [donation1, donation2]
    }

}

//extension DonateController: UITableViewDelegate, UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        return donations.count
//        
//    }
////    
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        
////        let donationOnGoing = donations[indexPath.row]
//////        let cell = tableView.dequeueReusableCell(withIdentifier: "onGoingDonationCell") as! OnGoingDonateTableViewCell
//////        cell.setDonation(donation: donationOnGoing)
////        return cell
////        
////    }
//
//
//
//}
