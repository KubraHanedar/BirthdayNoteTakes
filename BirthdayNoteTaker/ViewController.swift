//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Kübra Hanedar on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(_ sender: Any) {
        nameLabel.text = nameText.text
        birthdayLabel.text = birthdayText.text
    
    }
    
}

