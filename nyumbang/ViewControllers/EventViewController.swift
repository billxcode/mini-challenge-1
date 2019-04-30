//
//  EventViewController.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 28/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    
    @IBOutlet weak var listEvent: UITableView!
    
    var listTableEvent: [Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableEvent = createEventArray()
        // Do any additional setup after loading the view.
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

extension EventViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTableEvent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eventKita = listTableEvent[indexPath.row]
        let cell = listEvent.dequeueReusableCell(withIdentifier: "EventCell") as! EventCell
        cell.setEvent(event: eventKita)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = listEvent.indexPathForSelectedRow
        let currentDiscovery = listEvent.cellForRow(at: indexPath!) as! EventCell

        
        guard let discoveryDetail = segue.destination as? EventDetailViewController else { return }
        discoveryDetail.eventFoundation = currentDiscovery.eventFoundation
    }
    
}
