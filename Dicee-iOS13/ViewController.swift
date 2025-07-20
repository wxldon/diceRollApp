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
    @IBOutlet weak var totalSum: UILabel!
    
    var diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0..<6)
        rightDiceNumber = Int.random(in: 0..<6)
        
        diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rightDiceNumber]
        
        totalSum.text = "Total = \(leftDiceNumber+1 + rightDiceNumber+1)"
    }
    
}

