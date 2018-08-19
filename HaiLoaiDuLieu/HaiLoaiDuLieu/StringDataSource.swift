//
//  StringDataSource.swift
//  HaiLoaiDuLieu
//
//  Created by anhxa100 on 8/8/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class StringDataSource: NSObject, UITableViewDataSource {
    var nameList: [String] = ["Hoang1", "Hoang2", "Hoang3"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = nameList[indexPath.row]
    return cell
    }
    
    

}
