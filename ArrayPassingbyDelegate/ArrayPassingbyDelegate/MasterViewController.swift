//
//  ViewController.swift
//  ArrayPassingbyDelegate
//
//  Created by anhxa100 on 8/13/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, EditNumberDelegate {
    
    var masterNumber: String?
    
    @IBOutlet weak var MasterTitle: UILabel!
    @IBOutlet weak var masterTexField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if masterNumber != nil {
//            masterNumber = masterTexField.text
//        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! DetailViewController
            vc.detailNumber = masterTexField.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func editNumber(number: String) {
    }

}

