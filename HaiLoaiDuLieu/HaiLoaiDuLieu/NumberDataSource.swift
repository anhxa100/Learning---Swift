//
//  NumberDataSource.swift
//  HaiLoaiDuLieu
//
//  Created by anhxa100 on 8/8/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NumberDataSource: NSObject, UITableViewDataSource {
    var numList: [Int] = [1,5,7,22,16,24]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(numList[indexPath.row])
        return cell
    }
    
}
