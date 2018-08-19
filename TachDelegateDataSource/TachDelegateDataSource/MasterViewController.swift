//
//  MasterViewController.swift
//  TachDelegateDataSource
//
//  Created by anhxa100 on 8/1/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var dataSource = ObjectDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

