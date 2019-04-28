//
//  YayasanDetailViewController.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 27/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class YayasanDetailViewController: UIViewController {
    @IBOutlet weak var titleFoundation: UILabel!
    @IBOutlet weak var placeFoundation: UILabel!
    @IBOutlet weak var photoFoundation: UIImageView!
    @IBOutlet weak var bannerFoundation: UIImageView!
    @IBOutlet weak var listEventFoundation: UITableView!
    
    var yayasan: Yayasan!
    
    var listEvent: [Yayasan] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleFoundation.text = yayasan?.title
        photoFoundation.image = yayasan?.photo
        bannerFoundation.image = yayasan?.photo
        placeFoundation.text = yayasan?.place
        
        // Do any additional setup after loading the view.
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

//extension YayasanDetailViewController: UITableViewDataSource, UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return listEvent.count
//    }

    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let yayasanKita = listEvent[indexPath.row]
//        let cell = listEvent.dequeueReusableCell(withIdentifier: "EventFoundationCell") as! EventFoundationCell
//
//        return cell
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        let indexPath = listEvent.indexPathForSelectedRow
//        let currentDiscovery = listOfSearch.cellForRow(at: indexPath!) as! YayasanCell
//
//        guard let discoveryDetail = segue.destination as? YayasanDetailViewController else { return }
//        discoveryDetail.yayasan = currentDiscovery.yayasan
//
//    }
    
//}


