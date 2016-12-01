//
//  ViewController.swift
//  ColdCall
//
//  Created by Dustin Lee on 11/30/16.
//  Copyright © 2016 Dustin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNames: UILabel!
    
    @IBOutlet weak var randomNumbers: UILabel!
    
    let nameBank = [
        ("Dustin"),
        ("Connie"),
        ("Joesh"),
        ("Brenda"),
        ("Francis")
    ]
    let numberBank = ["5","4","3","2","1"]
    
    var currentName = 0
    var currentNumber = 0
    @IBAction func actionButtonPressed(_ sender: Any) {
        
        if currentName < nameBank.count - 1 && currentNumber < numberBank.count - 1 {
            self.currentName += 1
            self.currentNumber += 1
        }else {
            self.currentName = 0
            self.currentNumber = 0
        }
        print("cold call button pressed")
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateUI()
    }
    func updateUI() {
        randomNames.text = nameBank[Int(arc4random_uniform(5))]
        randomNumbers.text = numberBank[Int(arc4random_uniform(5))]
        if self.randomNumbers.text == "1" || self.randomNumbers.text == "2" {
            self.randomNumbers.textColor = UIColor.red
        }
        else if self.randomNumbers.text == "3" || self.randomNumbers.text == "4" {
            self.randomNumbers.textColor = UIColor.orange
        }else {
            self.randomNumbers.textColor = UIColor.green
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

