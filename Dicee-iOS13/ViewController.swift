//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    var arrayDiceNumber =  [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageView1.image = UIImage(named: "DiceSix")
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        //Snippet -> imageLiteral
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = arrayDiceNumber[Int.random(in: 0..<6)]
        diceImageView2.image = arrayDiceNumber[Int.random(in: 0..<6)]

    }
    
}

