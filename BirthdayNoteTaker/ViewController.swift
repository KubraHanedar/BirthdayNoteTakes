
//  ViewControlle r.swift
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
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // casting - as? "yapabilirsen" vs. as! "kesinlikle öyle kaydet"
        
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = newBirthday
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        //userDefaults an interface to the user's default database, where you store key-value pairs persistently across launches of your app. "veri tabanına ulaşabilir ve değer kaydedebilir."
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday")
        
        
        nameLabel.text = nameText.text
        birthdayLabel.text = birthdayText.text
        // stringlerin içinde değişken kullanmak için "Name:\(birthdayTextField.text!)" \paranteze al.
    
    }
    
}


