//
//  ViewController.swift
//  passingData
//
//  Created by anhxa100 on 7/18/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    var nameText = "" // Tạo một biến nameText để bắn dữ liệu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func done(_ sender: Any) {
        self.nameText = textField.text! //biến nameText nhận được dữ liệu nhập được từ biến textField từ bàn phím ,opptional để unwrap kiểu dữ liệu
        
        performSegue(withIdentifier: "name", sender: self) //name : định danh thanh điều hướng , perform: thực thi, với phương thức điều hướng "name", người gửi: chính nó
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NameViewController   // vc: viewcontroller, cấu trúc cú pháp segue.destination as! <Class màn nhận >
        
        vc.finalName = self.nameText // gán giá trị của biến finalName bằng giá trị của nameText, khi đó biến finalName hứng được dữ liệu từ biến bắn sang (nameText)
        
    }
}
