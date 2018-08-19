//
//  MasterTableViewController.swift
//  HaiBangDuLieu
//
//  Created by anhxa100 on 8/9/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    @IBOutlet weak var noData: UIView!
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var switchState: UISwitch!
    
    var hasNoData: Bool = false {
        didSet{
            hasNoData ? (tableView.tableFooterView = noData) : (tableView.tableFooterView = footerView)
        }
    }
    
    
    var stringDataSource = StringDataSource()
    var numberDataSource = NumberDataSource()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = stringDataSource
        stringDataSource.masTerTableView = self
        numberDataSource.masTerTableView = self
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Câu lệnh điều kiện rút gọn
        switchState.isOn ? (hasNoData = (stringDataSource.arrayString.count == 0)) : (hasNoData = (numberDataSource.arrayNumber.count == 0))
//        if duLieuA.tableA.count == 0 {
//            tableView.backgroundView = noData
//        }else{
//            tableView.backgroundView?.isHidden = true
//        }
        tableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Table view data source
    
    @IBAction func switchStatus(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = stringDataSource
            hasNoData = stringDataSource.arrayString.count == 0
        }else{
            tableView.dataSource = numberDataSource
            hasNoData = numberDataSource.arrayNumber.count == 0
        }
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailViewController = segue.destination as? DetailViewController else {return}
            detailViewController.bienHung = switchState.isOn ? (stringDataSource.arrayString[indexPath.row]) : (String(numberDataSource.arrayNumber[indexPath.row]))
            
            // thay thế đoạn code trên bằng code if - else
//            if switchOutlet.isOn{
//                detailViewController.bienHung = stringDataSource.arrayString[indexPath.row]
//            }else{
//                detailViewController.bienHung = String(numberDataSource.arrayNumber[indexPath.row])
//            }
        }
    }
    
    
    
    @IBAction  func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.source as? DetailViewController
        if let indexPath = tableView.indexPathForSelectedRow{
            if let data = detailViewController?.bienHung{
                switchState.isOn ? (stringDataSource.arrayString[indexPath.row] = data) : (numberDataSource.arrayNumber[indexPath.row] = (Int(data) ?? 0))
//                if switchOutlet.isOn {
//                    stringDataSource.arrayString[indexPath.row] = data
//                }else{
//                    numberDataSource.arrayNumber[indexPath.row] = (Int(data) ?? 0)
//                }
//                tableView.reloadRows(at: [indexPath], with: .fade)
            }
        }else{
            switchState.isOn ? (stringDataSource.arrayString.append((detailViewController?.bienHung)!)) : (numberDataSource.arrayNumber.append(Int(detailViewController?.bienHung ?? "") ?? 0))
//            if switchOutlet.isOn{
//                stringDataSource.arrayString.append((detailViewController?.bienHung)!)
//
//            }else{
//
//                numberDataSource.arrayNumber.append(Int(detailViewController?.bienHung ?? "") ?? 0)
//            }
            
            
//            if stringDataSource.arrayString.count == 0 {
//                tableView.backgroundView = noData
//            }else{
//                view = nil
//            }
//            if numberDataSource.arrayNumber.count == 0 {
//                tableView.backgroundView = noData
//            }else {
//                view = nil
//            }
            tableView.reloadData()
        }
    }
    

    
    
}
