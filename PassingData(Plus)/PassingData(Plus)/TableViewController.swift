//
//  TableViewController.swift
//  PassingData(Plus)
//
//  Created by anhxa100 on 7/26/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var cellNum: UITableViewCell!
    @IBOutlet var noData: UIView!
    
    var data1: [String] = []{
        didSet {
            if data1.count > 0 {
                //Update Table Data
            } else {
                //Hide Table and show so info of no data
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if data1.count == 0 {
            tableView.backgroundView = noData
        }
        else {
            tableView.backgroundView?.isHidden = true
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data1.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = String(data1[indexPath.row])

        return cell
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("section: \(indexPath.section)")
//        print("row: \(indexPath.row)")
//    }
//    Hoc cai nay sau
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            data1.remove(at: indexPath.row)
            if data1.count == 0 {
                tableView.backgroundView = noData
            }
            else {
                tableView.backgroundView = nil
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
          
        } else if editingStyle == .insert {
           
        }
    }


    // Chuan bi chuyen man tu indexPath cua row da dc select
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            print(indexPath.row)
        if let indexPath = tableView.indexPathForSelectedRow {
            
            // Ban du lieu tu data1[indexath.row] den dataSend
            let deatlViewController = segue.destination as? ViewController
            deatlViewController?.dataSend = data1[indexPath.row]
        }
    }

   @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) { //Action exit từ
        //            print(indexPath.row)
    let deatlViewController = segue.source as? ViewController

        if let indexPath = tableView.indexPathForSelectedRow {
            
            // Ban du lieu tu data1[indexath.row] den dataSend
            if let data = deatlViewController?.dataSend {    //tạo biến hứng để gán lại dữ liệu
                data1[indexPath.row] = data                 // gán data vừa hứng vào mảng data ở tại vị trí indexPath.row
                tableView.reloadRows(at: [indexPath], with: .fade) // reload dữ liệu tại vị trí vừa nhận dữ liệu
            }
        }
        else {
            data1.append((deatlViewController?.dataSend)!)
            tableView.reloadData()
//            data1.insert((deatlViewController?.dataSend)!, at: 0) // Insert vao vi tri xac dinh (dau mang)
            
//            tableView.reloadRows(at: [IndexPath(row: data1.count - 1, section: 0)], with: .fade)
    }
    
    if data1.count == 0 {
        tableView.backgroundView = noData
    }
    else {
        view = nil
    }
    tableView.reloadData()
    }


}
