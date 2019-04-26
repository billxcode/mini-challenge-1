//
//  DiscoverController.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 25/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class DiscoverController: UIViewController {
    
    @IBOutlet weak var listOfSearch: UITableView!
    
    var yayasan: [Yayasan] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yayasan = createArray()
    }
    
    
    func createArray() -> [Yayasan] {
        
        let video1 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        let video2 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        let video3 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        let video4 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        let video5 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        let video6 =  Yayasan(title: "Bill", description: "Tanthowi", photo: UIImage(imageLiteralResourceName: "beginner-first-app.png"))
        
        return [video1, video2, video3, video4, video5, video6]
    }
    
    @IBOutlet weak var searchSomething: UISearchBar!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Hide the navigation bar
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Show the navigation bar
        self.navigationController?.navigationBar.isHidden = false
    }

}


extension DiscoverController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yayasan.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yayasanKita = yayasan[indexPath.row]
        let cell = listOfSearch.dequeueReusableCell(withIdentifier: "YayasanCell") as! YayasanCell
        cell.setFoundation(foundation: yayasanKita)
        
        return cell
    }
}
