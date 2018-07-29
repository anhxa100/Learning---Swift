//
//  ViewController.swift
//  PassingData(Plus)
//
//  Created by anhxa100 on 7/26/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataSend: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if dataSend != nil {
            
            textField.text = dataSend
        }
    }
    @IBOutlet weak var textField: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func done(_ sender: Any) {
        dataSend = textField.text
    }
    
}

