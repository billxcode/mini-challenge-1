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
    
    var yayasan: Yayasan!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleFoundation.text = yayasan?.title
        photoFoundation.image = yayasan?.photo
//        placeFoundation.text = yayasan?.place
        
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
