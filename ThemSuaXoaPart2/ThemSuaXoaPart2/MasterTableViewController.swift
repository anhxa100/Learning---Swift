//
//  MasterTableViewController.swift
//  ThemSuaXoaPart2
//
//  Created by anhxa100 on 8/8/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    var danhSachHocSinh = NameDS()
    var tienHocPhi = NumDS()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = danhSachHocSinh
        tableView.delegate = self
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func switchButton(_ sender: UISwitch) {
        if sender.isOn{
            tableView.dataSource = danhSachHocSinh
        }else{
            tableView.dataSource = tienHocPhi
        }
        tableView.reloadData()
    }
// Chuẩn bị chuyền dữ liệu
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //            print(indexPath.row)
            if let indexPath = tableView.indexPathForSelectedRow {
    
                // Ban du lieu tu data1[indexath.row] den dataSend
                let deatlViewController = segue.destination as? AddTripViewController
                deatlViewController?.dataSend = danhSachHocSinh.hocSinh[indexPath.row]
            }
        }
    
    
}
