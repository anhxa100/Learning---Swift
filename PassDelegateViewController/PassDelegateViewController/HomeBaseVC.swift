//
//  HomeBaseVC.swift
//  PassDelegateViewController
//
//  Created by anhxa100 on 8/13/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class HomeBaseVC: UIViewController, SpyDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func didFindWeaponOfMassDestruction(found: Bool) {
//        print("Data received")
        if found {
            print("Launch cruise missiles and invade")
        }else{
            print("Abort the mission to invade")
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if segue.identifier == "endSpySegue" {
        let vc = segue.destination as! EnemyBaseVC
        vc.delegate = self
        // Pass the selected object to the new view controller.
        }
    }

}
