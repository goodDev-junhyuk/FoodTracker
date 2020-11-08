//
//  ViewController.swift
//  FoodTracker
//
//  Created by junhyuk on 2020/11/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Hello iOS !!")
        
        nameTextField.delegate = self
    }
    
    // MARK: Action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Label"
        
    }
    
    // MARK: UITextField Delegate Pattern.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the Keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    
    
    
    

}

