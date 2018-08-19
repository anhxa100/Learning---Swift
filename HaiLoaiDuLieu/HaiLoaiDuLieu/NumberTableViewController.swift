//
//  NumberTableViewController.swift
//  HaiLoaiDuLieu
//
//  Created by anhxa100 on 8/3/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NumberTableViewController: UITableViewController {
    var nameStringDataSource = StringDataSource()
    var numberDataSource = NumberDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = nameStringDataSource
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
//    @IBAction func change_Switch(_ sender: UISwitch!) {
//        if sender.isOn {
//            tableView.dataSource = nameStringDataSource
//        }else{
//            tableView.dataSource = numberDataSource
//        }
//        tableView.reloadData()
//    }
    
    @IBAction func change_Switch(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = nameStringDataSource
        }else{
            tableView.dataSource = numberDataSource
        }
        tableView.reloadData()
        
    }
    
}
