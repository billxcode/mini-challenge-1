//
//  DonationItem.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 29/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import Foundation
import UIKit

class DonationItem {
    
    var categoryImg: UIImage
    var name: String
    var qty: Int
    
    init(name: String, qty: Int, categoryImg: UIImage) {
        
        self.name = name
        self.qty = qty
        self.categoryImg = categoryImg
    
    }
    
    
}
