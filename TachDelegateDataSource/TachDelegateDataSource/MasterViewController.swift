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
        dataSource.objects.insert(NSDate(), at: 0)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

