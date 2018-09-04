//
//  ViewController.swift
//  PushPop
//
//  Created by anhxa100 on 7/23/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    @IBAction func goto_blueScreen(_ sender: Any) {
        // Storyboard
        let sb = UIStoryboard(name: "Main", bundle: nil)
        // Creat blueScreen 2
        let blueScreen2 = sb.instantiateViewController(withIdentifier: "BLUESCREEN") 
//        let blueScreen3 = sb.instantiateViewController(withIdentifier: "REDSCREEN")
        // Navigation Push
        self.navigationController?.pushViewController(blueScreen2, animated: true)
//        self.navigationController?.pushViewController(blueScreen3, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


