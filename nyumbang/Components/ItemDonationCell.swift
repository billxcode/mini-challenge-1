//
//  itemDonationCell.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 29/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class ItemDonationCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if!__CGSizeEqualToSize(bounds.size,self.intrinsicContentSize)do {
            self.invalidateIntrinsicContentSize()
        }
    }
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
    
}
