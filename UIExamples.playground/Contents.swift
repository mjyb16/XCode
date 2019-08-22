//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    @objc func buttonTapped() {
        print("Tapped the button")
    }
    
    @objc func datePickerValueChanged() {
        print("Changed value of date picker!")
    }
    override func loadView() {
        let view = UIScrollView() //Best practice: let view = UIView(), and then create a subview scrollview = UIScrollView and add view.addSubview
        view.backgroundColor = .white
        view.contentSize = CGSize(width: 375, height: 1000)
        
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        
        let textView = UITextView()
        textView.frame = CGRect(x:50, y:240, width: 200, height: 100)
        textView.text = "Tap to edit me!"
        textView.textColor = .black
        view.addSubview(textView)
        
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 350, width: 100, height: 20)
        button.setTitle("Tap me", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        view.addSubview(button)
        
        let datePicker = UIDatePicker()
        datePicker.frame = CGRect(x: 0, y: 600, width: 375, height: 500)
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
        view.addSubview(datePicker)
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
