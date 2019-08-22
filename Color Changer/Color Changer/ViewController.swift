//
//  ViewController.swift
//  Color Changer
//
//  Created by John Barth on 7/8/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ColorButtonSet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorButtonSet.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TextInput: UITextField!
    @IBOutlet weak var ColorDisplay: UILabel!
    @IBAction func ColorButton(_ sender: Any) {
        if var newColor:String = TextInput.text {
            ColorDisplay.text = "The color is: \(newColor)"
            newColor = newColor.lowercased()
            switch newColor{
            case "red":
                view.backgroundColor = UIColor.red
            case "blue":
                view.backgroundColor = UIColor.blue
            case "green":
                view.backgroundColor = UIColor.green
            case "yellow":
                view.backgroundColor = UIColor.yellow
            case "orange":
                view.backgroundColor = UIColor.orange
            case "white":
                view.backgroundColor = UIColor.white
            default:
                ColorDisplay.text = "The color is undefined. Try a different color."
                view.backgroundColor = UIColor.magenta
            }
        }
        else{
            ColorDisplay.text = "The color is: White"
        }
        
    }
}

