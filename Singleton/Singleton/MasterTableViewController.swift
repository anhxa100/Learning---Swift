//
//  MasterTableViewController.swift
//  Singleton
//
//  Created by anhxa100 on 8/16/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    @IBOutlet var noData: UIView!
    @IBOutlet weak var footerView: UIView!
    
    var hasNoData: Bool = true {
        didSet {
            hasNoData ?(tableView.tableFooterView = noData ) : (tableView.tableFooterView = footerView )
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if Singleton.shared.arrName.count == 0 {
            tableView.tableFooterView = noData
        }else{
            tableView.tableFooterView = nil
        }
        tableView.reloadData()
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
        return Singleton.shared.arrName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = Singleton.shared.arrName[indexPath.row]

        return cell
    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }


    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        Singleton.shared.arrName.remove(at: indexPath.row)
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            if Singleton.shared.arrName.count == 0 {
                tableView.tableFooterView = noData
            }else{
                tableView.tableFooterView = nil
            }
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           Singleton.shared.addData = false
        Singleton.shared.index = indexPath.row
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func add(_ sender: Any) {
         Singleton.shared.addData = true
            
        tableView.tableFooterView = nil
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let detailVC = segue.destination as? DetailViewController
//        if let indexPath = tableView.indexPathForSelectedRow {
//            detailVC?.dataDetail = Singleton.shared.arrName[indexPath.row]
//        }
//
//
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
    

}
