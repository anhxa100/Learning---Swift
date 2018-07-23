//
//  NameViewController.swift
//  passingData
//
//  Created by anhxa100 on 7/18/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var finalName = "" // tạo biến rỗng (dạng String) để hứng dữ liệu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = finalName // sau khi hứng được dữ liệu ở màn trước sau đó gán vào nameLabel

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
