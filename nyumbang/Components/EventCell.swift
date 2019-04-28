//
//  EventCell.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 28/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
    
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var placeEvent: UILabel!
    @IBOutlet weak var descriptionEvent: UILabel!
    @IBOutlet weak var timeRemainingEvent: UILabel!
    @IBOutlet weak var thumbnailEvent: UIImageView!
    
    
    var eventFoundation: Event!
    
    func setEvent(event: Event){
        self.eventFoundation = event
        titleEvent.text = event.title
        placeEvent.text = event.place
        descriptionEvent.text = event.description
        thumbnailEvent.image = event.thumbnail
        timeRemainingEvent.text = String(event.timeRemaining)
    }
}
