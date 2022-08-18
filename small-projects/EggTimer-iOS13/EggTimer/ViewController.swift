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
    
    @IBOutlet weak var progressBar: UIProgressView!

    let eggTimes: [String : Int] = ["Soft": 12, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness: String = sender.currentTitle!
        
        timer.invalidate()
        progressBar.progress = 0
        secondsPassed = 0
        titleLabel.text = hardness
        totalTime = eggTimes[hardness]!

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsPassed < self.totalTime {

                self.secondsPassed += 1
                self.progressBar.progress = Float(self.secondsPassed) / Float(self.totalTime)

            } else {
                self.titleLabel.text = "DONE!"
                Timer.invalidate()
            }
        }
        
    }
}
