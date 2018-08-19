//
//  ViewController.swift
//  DemoSingleTon
//
//  Created by anhxa100 on 8/17/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailTextField: UITextField!

    var index: IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configure()
    }
    func configure() {
        if index != nil {
          detailTextField.text = String(DataService.shared.arrayNumber[index!.row])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveData(_ sender: UIBarButtonItem) {
        var data: Int?
        if detailTextField.text != "" {
            data = Int(detailTextField.text ?? "999")
        }
        if let indexPath = index {
            DataService.shared.editData(at: indexPath, number: data!)
        } else {
            DataService.shared.addNewNumber(number: data!)
        }
        navigationController?.popViewController(animated: true)
    }


}

