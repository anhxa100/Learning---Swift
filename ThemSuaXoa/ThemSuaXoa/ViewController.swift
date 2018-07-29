//
//  ViewController.swift
//  ThemSuaXoa
//
//  Created by anhxa100 on 7/25/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var nhap_so: UITextField!
    var num = ""
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  

    @IBAction func done(_ sender: UIButton) {
        self.num = nhap_so.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddInsertDeleteTableViewController
        vc.finalNum = [self.num]
    }
    
    
}

