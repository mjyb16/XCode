//
//  ViewController.swift
//  Text Changer
//
//  Created by John Barth on 6/21/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TheMessage: UILabel!
    @IBOutlet weak var counterDisplay: UILabel!
    var counting: Int = 0
    var iAmDev: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func TextChange(_ sender: Any) {
        if iAmDev == false {
            TheMessage.text = "I'm an app developer"
            iAmDev = true
        }
        else {
            TheMessage.text = "I'm going to be an app developer"
            iAmDev = false
        }
        print("You coded the button press")
        counting += 1
        counterDisplay.text = "Counter: \(counting)"
        print(counting)
    }
}

