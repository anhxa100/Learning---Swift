//
//  EnemyBaseVC.swift
//  PassDelegateViewController
//
//  Created by anhxa100 on 8/13/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

    //Khai báo
protocol SpyDelegate {
    func didFindWeaponOfMassDestruction(found: Bool)
}

class EnemyBaseVC: UIViewController {
    
    // Khởi tạo
    let hasFindWeaponOfMassDestruction : Bool = true
    var delegate : SpyDelegate?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendingMessage(_ sender: Any) {
        
        //Nếu delegate là nil thì apps sẽ bị crash
        // Do đó cần kiểm tra giá trị của delegate
        if delegate != nil {
            delegate?.didFindWeaponOfMassDestruction(found: true)
            dismiss(animated: true, completion: nil)
        }
        
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
