//
//  ViewController.swift
//  Dicee
//
//  Created by Nikolai Astakhov on 17.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!

    let diceArray = ["Dice1.png", "Dice2.png", "Dice3.png", "Dice4.png", "Dice5.png", "Dice6.png"]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        var timerSupporter = 0.0
        for _ in 0...6 {
            Timer.scheduledTimer(withTimeInterval: 0.15 * timerSupporter, repeats: false) { (timer) in
                self.leftDice.image = UIImage(named: self.diceArray[Int.random(in: 0...5)])
                self.rightDice.image = UIImage(named: self.diceArray[Int.random(in: 0...5)])
            }
            timerSupporter += 1
        }
    }
}
