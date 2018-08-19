//
//  ADataSource.swift
//  HaiBangDuLieu
//
//  Created by anhxa100 on 8/9/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit


class StringDataSource: NSObject, UITableViewDataSource {
    
    var arrayString:[String] = ["Hoang"]
    weak var masTerTableView: MasterTableViewController?
    
    // số Section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // Số row trong Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
    // Hiển thị data lên row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayString[indexPath.row]
        return cell
    }
    // Cho phép sửa
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayString.remove(at: indexPath.row)// Delete the row from the data source
//            if arrayString.count == 0 {
//               // tableView.backgroundView = hasNodata.noData
//            }
//            else {
//                tableView.backgroundView = nil
//            }
            masTerTableView?.hasNoData = (arrayString.count == 0)
            tableView.deleteRows(at: [indexPath], with: .fade)

        }
        tableView.reloadData()
    }
    
    //
    
    
}
