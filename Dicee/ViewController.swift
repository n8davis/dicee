//
//  ViewController.swift
//  Dicee
//
//  Created by Nate Davis on 3/24/19.
//  Copyright © 2019 Nate Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // dice picture references
    let dicePictures = [
        "dice1", "dice2", "dice3",
        "dice4", "dice5", "dice6"
    ]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        diceImageView1.image = UIImage(named: dicePictures[Int.random(in: 0 ... 5)])
        diceImageView2.image = UIImage(named: dicePictures[Int.random(in: 0 ... 5)])
    }
}

