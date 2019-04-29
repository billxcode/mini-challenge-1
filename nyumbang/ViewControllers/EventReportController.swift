//
//  EventReportController.swift
//  nyumbang
//
//  Created by Faridho Luedfi on 28/04/19.
//  Copyright © 2019 Apple Developer Academy - Kelompok 6. All rights reserved.
//

import UIKit

class EventReportController: UIViewController, UIScrollViewDelegate {
    
    var slides: [SlidersView] = []

    @IBOutlet weak var eventSlider: UIScrollView!{
        didSet{
            eventSlider.delegate = self
        }
    }
    
    @IBOutlet weak var eventSliderPageControll: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = createSlides()
        setuopSlider(slides: slides)
        
        
        eventSliderPageControll.numberOfPages = slides.count
        eventSliderPageControll.currentPage = 0
        view.bringSubviewToFront(eventSliderPageControll)

    }
    
    func createSlides() -> [SlidersView] {
        
        let slide1: SlidersView = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! SlidersView
        slide1.slideImg.image = UIImage(named: "71ABEA25-AD0D-41DF-8C7A-ABDB0705AD2A")
        
        let slide2: SlidersView = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! SlidersView
        slide2.slideImg.image = UIImage(named: "3A55B22D-564E-4EC1-9BFB-441674A83981")
        
        return [slide1, slide2]

    }
    
    func setuopSlider(slides: [SlidersView]) {
        eventSlider.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: eventSlider.frame.height)
        eventSlider.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: eventSlider.frame.height)
        eventSlider.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: eventSlider.frame.height)
            eventSlider.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let slideIndex = round(scrollView.contentOffset.x / view.frame.width)
        eventSliderPageControll.currentPage = Int(slideIndex)
        
//        let maxHorizontalOffset: CGFloat = eventSlider.contentSize.width - eventSlider.frame.width
    }

}
