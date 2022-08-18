//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes: [String : Int] = ["Soft": 300, "Medium": 420, "Hard": 720]

    var secondsRemaining = 60

    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()

        let hardness: String = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
            } else {
                self.titleLabel.text = "DONE!"
                Timer.invalidate()
            }
        }
        
    }
}
