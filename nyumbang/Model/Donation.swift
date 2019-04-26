//
//  donation.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 26/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import Foundation
import UIKit

class Donation {
    
    var eventName: String
    var eventReaming: String
    var statusDonate: String
    var dateDonate: String
    

    init(name: String, reaming: String, status: String, date: String ) {
        self.eventName = name
        self.eventReaming = reaming
        self.statusDonate = status
        self.dateDonate = date
    }

}
