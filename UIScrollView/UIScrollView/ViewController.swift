//
//  ViewController.swift
//  UIScrollView
//
//  Created by anhxa100 on 7/30/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgPhoto: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.delegate = self
//        scrollView.minimumZoomScale = 1.0
//        scrollView.maximumZoomScale = 10.0
        
        
    }
     func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return self.imgPhoto
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

