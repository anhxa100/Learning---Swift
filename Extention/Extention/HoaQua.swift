//
//  HoaQua.swift
//  Extention
//
//  Created by anhxa100 on 8/7/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class HoaQua: NSObject, UITableViewDataSource {
    var rauCuQua = ["Ca Chua", "Rau Muong", "Carrot"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rauCuQua.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = rauCuQua[indexPath.row]
        return cell
        
    }
    
    
}
