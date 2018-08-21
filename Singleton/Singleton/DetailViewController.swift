//
//  ViewController.swift
//  Singleton
//
//  Created by anhxa100 on 8/15/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var dataDetail: String?
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Singleton.shared.addData == false {
        textField.text = Singleton.shared.arrName[Singleton.shared.index]
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func done(_ sender: Any) {
        if let text = textField.text {
            if Singleton.shared.addData == true {
                Singleton.shared.arrName.append(text)
                
            }
            else {
                
                Singleton.shared.arrName[Singleton.shared.index] = text
            }
        }
        navigationController?.popViewController(animated: true)
    }
}
