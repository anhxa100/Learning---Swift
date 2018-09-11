//
//  ViewController.swift
//  UIBarButtonItem
//
//  Created by anhxa100 on 9/11/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myToolbar: UIToolbar!
    var isPlaying = false
    
    @IBOutlet weak var buttonStatusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: nut tua ve
    @IBAction func rewindButtonTapped(_ sender: Any) {
        setOnPause()
        buttonStatusLabel.text = "Tua Quay Lai...."
    }
    //MARK: Nut Play
    @IBAction func playButtonTapped(_ sender: Any) {
        if !isPlaying {
            setOnPlay()
        }else{
            setOnPause()
        }
    }
    //MARK: Nut tua di
    @IBAction func fastFowardButtonTapped(_ sender: Any) {
        setOnPause()
        buttonStatusLabel.text = "Tua nhanh..."
    }
    //MARK: Func pause button
    func setOnPause(){
        var items = myToolbar.items
        items![2] = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.play, target: self, action: #selector(ViewController.playButtonTapped(_:)))
            isPlaying = false
            buttonStatusLabel.text = "Da Tam Dung..."
            myToolbar.setItems(items, animated: true)
    }
    //MARK: func Play button
    func setOnPlay () {
        var items = myToolbar.items
        items![2] = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.pause, target: self, action: #selector(ViewController.playButtonTapped(_:)))
        isPlaying = true
        buttonStatusLabel.text = "Dang Chay..."
        myToolbar.setItems(items, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

