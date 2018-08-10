//
//  ViewController.swift
//  Music
//
//  Created by Andres Torres on 8/10/18.
//  Copyright © 2018 andytb. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBAction func keys(_ sender: UIButton) {
        playSound(buttonPressed: sender.tag)
    }
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func playSound(buttonPressed tag: Int){
        let soundUrl = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: soundUrl!)
        } catch  {
            print(error)
        }
        
        player.play()
    }
   

}

