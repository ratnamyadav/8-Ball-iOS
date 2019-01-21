//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ratnam Yadav on 20/01/19.
//  Copyright © 2019 Ratnam Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Variables
    let ballImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber:Int = 0;
    // UI components
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setRandomBall()
    }

    @IBAction func askButton(_ sender: UIButton) {
        setRandomBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            setRandomBall()
        }
    }
    
    func setRandomBall() {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballImages[randomBallNumber])
    }
}

