//
//  ChooseItemCell.swift
//  nyumbang
//
//  Created by Steven on 4/29/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

protocol ChooseItemDelegate {
    func clicked(text: String, index: IndexPath)
}


class ChooseItemCell: UITableViewCell,UITextFieldDelegate {
    
    
    @IBOutlet weak var imageChooseItem: UIImageView!
    
    @IBOutlet weak var stepperChooseItem: UIStepper!
    @IBOutlet weak var inputAmountChooseItem: UITextField!
    @IBOutlet weak var amountLblChooseItem: UILabel!
    @IBOutlet weak var titleChooseItem: UILabel!
    @IBOutlet weak var descriptionChooseItem: UILabel!
    
    var delegate: ChooseItemDelegate?
    
    
    var index: IndexPath?
    
    var valueChanged = ""
    override func awakeFromNib() {
        inputAmountChooseItem.delegate = self
        inputAmountChooseItem.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField){
        
        guard let value = textField.text else {
            valueChanged = "0"
            return
        }
        
        
        
        valueChanged = value
        delegate?.clicked(text: value, index: self.index!)
        
        guard let intValue = Int(value) else {return}
        stepperChooseItem.value = Double(intValue)
        
        self.inputAmountChooseItem.text = valueChanged
        
        
    }

    
    @IBAction func stepperAction(_ sender: UIStepper) {
        valueChanged = String(Int(sender.value))
        
        delegate?.clicked(text: valueChanged, index: self.index!)
        self.inputAmountChooseItem.text = String(Int(sender.value))
        
        
    }
    
    
    
    
 
    
}
