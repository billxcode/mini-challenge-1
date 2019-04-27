//
//  DiscoveryDetailControllerViewController.swift
//  nyumbang
//
//  Created by Bill Tanthowi Jauhari on 26/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DiscoveryDetailController: UIViewController {
    @IBOutlet weak var thumbnailDetailDiscovery: UIImageView!
    @IBOutlet weak var titleDetailDiscovery: UILabel!
    @IBOutlet weak var descriptionDetailDiscovery: UILabel!
    
    var yayasan: Yayasan!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleDetailDiscovery.text = yayasan?.title
        descriptionDetailDiscovery.text = yayasan?.description
        thumbnailDetailDiscovery.image = yayasan?.photo

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
