//
//  BDataSouce.swift
//  HaiBangDuLieu
//
//  Created by anhxa100 on 8/9/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NumberDataSource: NSObject, UITableViewDataSource {
    
    var arrayNumber:[Int] = [12,12,34,11,44]
    
    weak var masTerTableView: MasterTableViewController?

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arrayNumber[indexPath.row])
        return cell
    }
    // cho phép sửa
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    // Delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
//
//            if arrayNumber.count == 0 {
//                // tableView.backgroundView = hasNodata.noData
//            }
//            else {
//                tableView.backgroundView = nil
//            }
            
            arrayNumber.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            masTerTableView?.hasNoData = (arrayNumber.count == 0)
        }
    }
    
    
}
