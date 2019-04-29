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
    @IBOutlet weak var listEventTable: UITableView!
    @IBOutlet weak var listEventView: UIView!
    
    var yayasan: Yayasan!
    var listEvent: [Event] = []
    var eventCell: EventCell!
    
    var tabToggle = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listEvent = createEventArray()
        
        titleFoundation.text = yayasan?.title
        photoFoundation.image = yayasan?.photo
        bannerFoundation.image = yayasan?.photo
        placeFoundation.text = yayasan?.place
        
        // Do any additional setup after loading the view.
    }
    @IBAction func tabEventFoundation(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0 {
            tabToggle = true
        }else{
            tabToggle = false
        }
        listEventTable.reloadData()
//        listEventHistoryTable.reloadData()
    }
    
    func createEventArray() -> [Event]{
        let description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
        let place = "Tangerang"
        
        let event1 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event2 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event3 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event4 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event5 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event6 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event7 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event8 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event9 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event10 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event11 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        let event12 =  Event(title: "Penggalangan Barang Kantor Malang", place: place, description: description, thumbnail: UIImage(imageLiteralResourceName: "vlog-4.png"), timeRemaining: 14)
        
        return [event5, event2, event7, event3, event1, event6, event4, event8, event9, event10, event11, event12]
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

extension YayasanDetailViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listEvent.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yayasanKita = listEvent[indexPath.row]
        var cell = listEventTable.dequeueReusableCell(withIdentifier: "EventFoundationCell") as! EventCell
        
        cell.setEvent(event: yayasanKita)
        
        if tabToggle {
            cell.donateButton.isHidden = false
            self.listEventTable.rowHeight = 245
        }else{
            cell.donateButton.isHidden = true
            self.listEventTable.rowHeight = 185
            cell.timeRemainingEvent.text = "Event ended"
        }
        
        return cell
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        let indexPath = listEventTable.indexPathForSelectedRow
//        let currentDiscovery = listEventTable.cellForRow(at: indexPath!) as! EventCell
//
//        guard let discoveryDetail = segue.destination as? YayasanDetailViewController else { return }
//        discoveryDetail.yayasan = currentDiscovery.yayasan
//
//    }
    
}



