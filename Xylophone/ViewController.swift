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
        print("hiii")
        playSound()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    

}

