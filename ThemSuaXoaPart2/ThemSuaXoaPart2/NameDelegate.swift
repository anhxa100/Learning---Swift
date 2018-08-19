//
//  NameDelegate.swift
//  ThemSuaXoaPart2
//
//  Created by anhxa100 on 8/9/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NameDelegate: NSObject, UITableViewDelegate {
         func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //            print(indexPath.row)
                if let indexPath = tableView.indexPathForSelectedRow {
    
                    // Ban du lieu tu data1[indexath.row] den dataSend
                    let deatlViewController = segue.destination as? AddTripViewController
                    deatlViewController?.dataSend = danhSachHocSinh.hocSinh[indexPath.row]
                }
            }
}
