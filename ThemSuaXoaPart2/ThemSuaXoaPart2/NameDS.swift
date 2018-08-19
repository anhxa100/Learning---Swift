//
//  NameDS.swift
//  ThemSuaXoaPart2
//
//  Created by anhxa100 on 8/8/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NameDS: NSObject, UITableViewDataSource {
    var hocSinh: [String] = ["Hoang1"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hocSinh.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = hocSinh[indexPath.row]
        return cell
    }
    
    //edit, delete, add
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    // Delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            hocSinh.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }else if editingStyle == .insert{
        }
    }
    // Edit
    
}
