//
//  MasterTableViewController.swift
//  passDataSingleton
//
//  Created by anhxa100 on 8/14/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit



class MasterTableViewController: UITableViewController, passingDataDelegate {
    @IBOutlet var noData: UIView!
    @IBOutlet weak var footerView: UIView!
    
    
    var hasNoData: Bool = false {
        didSet {
        hasNoData ? (tableView.tableFooterView = noData) : (tableView.tableFooterView = footerView )
        }
    }
    
    // init array name
    var masterString: String?
    
    var arrName = ["Hoang 1", "Hoang 2", "Hoang 3", "Hoang 4"]
    
    
    //MARK: - View data in tableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrName[indexPath.row]
        return cell
    }
    
    
    // MARK:` - Edit table View
    //Delete, Edit
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        arrName.remove(at: indexPath.row)
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            if arrName.count == 0 {
                    tableView.tableFooterView = noData
            }
            
            
        }else if editingStyle == .insert {
            //
        }
    }
    
    
    //MARK: -Passing Data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailViewController
        detailVC?.delegate = self
        if let indexPath = tableView.indexPathForSelectedRow {
            detailVC?.detailName = arrName[indexPath.row]
        }
    }
    
    
    //MARK: - Use func in protocol
    func detailDelegate(name: String) {
        tableView.tableFooterView = nil
        if let indexPath = tableView.indexPathForSelectedRow {
            arrName[indexPath.row] = name
            tableView.reloadData()
        }else {
            arrName.append(name)
            tableView.reloadData()
        }
    }
}
