//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer?
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        // change opacity
        sender.alpha = 0.5
        
        // change back after 0.2 seconds delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
        }
        
        playSound(soundName: sender.currentTitle!)
        
       
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }

}

