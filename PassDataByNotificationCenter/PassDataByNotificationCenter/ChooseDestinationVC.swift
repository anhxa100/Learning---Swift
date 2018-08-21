//
//  ViewController.swift
//  PassDataByNotificationCenter
//
//  Created by anhxa100 on 8/21/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ChooseDestinationVC: UIViewController {
    @IBOutlet weak var cityChosenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(setToPeru(notification:)) , name: .peru , object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(setToArgentina(nitification:)) , name: .argentina, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func setToPeru (notification: NSNotification) {
        cityChosenLabel.text = "Peru"
    }
    @objc func setToArgentina (nitification: NSNotification) {
        cityChosenLabel.text = "Argentina"
    }
}

