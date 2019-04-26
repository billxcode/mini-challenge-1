//
//  YayasanCell.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 26/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class YayasanCell: UITableViewCell {
    @IBOutlet weak var titleFoundation: UILabel!
    @IBOutlet weak var descriptionFoundation: UILabel!
    @IBOutlet weak var thumbnailFoundation: UIImageView!
    
    var yayasan: Yayasan!
    
    func setFoundation(foundation: Yayasan){
        
        self.yayasan = foundation
        titleFoundation.text = foundation.title
        descriptionFoundation.text = foundation.description
        thumbnailFoundation.image = foundation.photo
    }

}
