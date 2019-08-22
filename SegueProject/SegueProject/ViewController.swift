//
//  ViewController.swift
//  SegueProject
//
//  Created by John Barth on 7/29/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tappedPink(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Pink Segue", sender: nil)
        }
    }
    
    @IBAction func tappedBlue(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Blue Segue", sender: nil)
        }
    }
}

