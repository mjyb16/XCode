//
//  ViewController.swift
//  firstapp
//
//  Created by John Barth on 6/13/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorIsGreen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func MyButton(_ sender: Any) {
        
        if colorIsGreen{
            view.backgroundColor = UIColor.purple
            colorIsGreen = false
        }
        else{
            view.backgroundColor = UIColor.green
            colorIsGreen = true
        }
    }
    
}

