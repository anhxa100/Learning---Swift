//
//  DetailViewController.swift
//  passDataSingleton
//
//  Created by anhxa100 on 8/14/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

protocol passingDataDelegate{
    func detailDelegate (name : String)
}

class DetailViewController: UIViewController {
    
    
    var delegate: passingDataDelegate?
    var detailName: String?
    
    // MARK: - Outlet
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if detailName != nil {
            textField.text = detailName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Action
    @IBAction func done(_ sender: Any) {
        delegate?.detailDelegate(name: textField.text!)
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
