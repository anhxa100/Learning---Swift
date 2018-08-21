//
//  DestinationVC.swift
//  PassDataByNotificationCenter
//
//  Created by anhxa100 on 8/21/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class DestinationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func peruButton(_ sender: Any) {
        NotificationCenter.default.post(name: .peru, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func argentinaButton(_ sender: Any) {
        NotificationCenter.default.post(name: .argentina, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
