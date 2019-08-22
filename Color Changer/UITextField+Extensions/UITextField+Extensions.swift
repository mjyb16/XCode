//
//  UITextField+Extensions.swift
//  UITextField+Extensions
//
//  Created by John Barth on 7/8/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

// Creates DONE BUTTON, SOURCE: Dejan Atanasov via Medium.

//Note: Use File/New/Target/CustomKeyboardExtension to create this folder, then create a new swift file within using file/new/file/swift and copy this code into that. Don't forget to change the target membership of this file to include the actual project (see the file inspector on the right).

import Foundation
import UIKit
extension UITextField{
    
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}
