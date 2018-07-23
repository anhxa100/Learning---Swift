//
//  bubblesortTableViewController.swift
//  BubbleSortInTableViewController
//
//  Created by anhxa100 on 7/20/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class bubblesortTableViewController: UITableViewController {
    
    var arr = Array(10...100) // Tạo mảng toàn cục
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sử dụng func getBubbleSort để gán các giá trị vào mảng arr
        arr = getBubbleSort(array: arr)
        
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
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellBubble", for: indexPath)
        
        cell.textLabel?.text = String(arr[indexPath.row])  // truy cập vào số phần tử trong mảng, ép về kiểu String và gán vào cell.textLabel có kiểu dữ liệu là text

    return cell
        
    }
    
    // Sử dụng bubble Sort để sắp xếp lại các phần tử trong mảng
    func getBubbleSort(array: [Int]) -> [Int] {
            var arrayNum = array
            for i in 0...(arrayNum.count-2) {
                for j in (i+1)...(arrayNum.count-1) {
                    if arrayNum[i] < arrayNum[j] {
                        let swap = arrayNum[i]
                        arrayNum[i] = arrayNum [j]
                        arrayNum[j] = swap
                    }
                }
            }
            return arrayNum
        }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
