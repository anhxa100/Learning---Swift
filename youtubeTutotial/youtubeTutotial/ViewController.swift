//
//  ViewController.swift
//  youtubeTutotial
//
//  Created by anhxa100 on 7/17/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleMode: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
//    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
//        let url = URL(fileURLWithPath: path)
//        do{
//            player = try AVAudioPlayer(contentsOf: url)
//            player.prepareToPlay()
//        } catch let error as NSError {
//            print(error.description)
//        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func powerButton(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        
//        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 233, width: 376, height: 200)
        }) { (finished) in
            self.hustleMode.isHidden = false
            self.onLabel.isHidden = false
            
        }
    }
    
}

