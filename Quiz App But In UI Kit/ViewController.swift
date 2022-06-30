//
//  ViewController.swift
//  Quiz App But In UI Kit
//
//  Created by DWizard11 on 30/6/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        answerTextField.resignFirstResponder()
        return false
    }
    
    
   
    @IBOutlet weak var answerTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTextField.delegate = self
    }

    @IBAction func enterButtonPressed(_ sender: Any) {
        if answerTextField.text?.lowercased() == "swift" {
            var title = "Correct!"
            var message = "✅"
        } else {
            var title = "Wrong"
            var message = "❌"
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    @IBAction func screenTapped(_ sender: Any) {
        answerTextField.resignFirstResponder()
    }
}

