//
//  DetailViewController.swift
//  ArrayPassingbyDelegate
//
//  Created by anhxa100 on 8/13/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

protocol EditNumberDelegate: class {
    func editNumber (number: String)
}

class DetailViewController: UIViewController {
    
    var detailNumber: String?
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailTexField: UITextField!
    
    weak var delegate: EditNumberDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if detailNumber != nil{
        detailTexField.text = detailNumber
        } // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func detailDone(_ sender: Any) {
            //master = detailTexField.text
            dismiss(animated: true, completion: nil)
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
