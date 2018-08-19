//
//  EADViewController.swift
//  HaiBangDuLieu
//
//  Created by anhxa100 on 8/9/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    var bienHung: String?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if bienHung != nil {
            textField.text = bienHung
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(_ sender: Any) {
        
        bienHung = textField.text
        
        //        print(bienHung)
    }
}
