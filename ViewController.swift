//
//  ViewController.swift
//  Rocket
//
//  Created by Mel John del Barrio on 22/08/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var btnPower: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var hustleLabel: UILabel!
    
        @IBOutlet weak var onLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError
        {
            print(error.description)
        }
    }

    
    @IBAction func btnPowerPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        btnPower.isHidden = true
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 100, width: 35, height: 240)
        }) { (finished) in
            self.hustleLabel.isHidden = false;
            self.onLabel.isHidden = false;
            
        }
        
        
    }
    


}

