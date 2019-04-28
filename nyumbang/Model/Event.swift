//
//  Event.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 28/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var title: String
    var place: String
    var description: String
    var thumbnail: UIImage
    var timeRemaining: Int
    
    
    init(title: String, place: String, description: String, thumbnail: UIImage, timeRemaining: Int) {
        self.title = title
        self.place = place
        self.description = description
        self.thumbnail = thumbnail
        self.timeRemaining = timeRemaining
    }
}
