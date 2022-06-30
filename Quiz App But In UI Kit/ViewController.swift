//
//  ViewController.swift
//  Quiz App But In UI Kit
//
//  Created by DWizard11 on 30/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterButtonPressed(_ sender: Any) {
    }
    
    @IBAction func screenTapped(_ sender: Any) {
        answerTextField.resignFirstResponder()
    }
}

