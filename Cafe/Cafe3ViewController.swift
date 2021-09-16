//
//  Cafe3ViewController.swift
//  Cafe
//
//  Created by Benjamin Berman on 9/13/21.
//

import UIKit

class Cafe3ViewController: UIViewController {

    @IBOutlet weak var AdminLabel: UILabel!
    @IBOutlet weak var PasswordLabel: UILabel!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var PasswordButton: UIButton!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var ReturnButton: UIButton!
    
    var x = 0
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var PriceTextField: UITextField!
    @IBOutlet weak var AdminAddButton: UIButton!
    
    public var handler: ((String?) -> Void)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let black = UIColor.black
        InfoLabel.isHidden = true
        NameLabel.isHidden = true
        PriceLabel.isHidden = true
        NameTextField.isHidden = true
        PriceTextField.isHidden = true
        AdminAddButton.isHidden = true
        AdminLabel.layer.borderColor = black.cgColor
        PasswordLabel.layer.borderColor = black.cgColor
        PasswordTextField.layer.borderColor = black.cgColor
        PasswordButton.layer.borderColor = black.cgColor
        InfoLabel.layer.borderColor = black.cgColor
        NameLabel.layer.borderColor = black.cgColor
        PriceLabel.layer.borderColor = black.cgColor
        NameTextField.layer.borderColor = black.cgColor
        PriceTextField.layer.borderColor = black.cgColor
        AdminAddButton.layer.borderColor = black.cgColor
        ReturnButton.layer.borderColor = black.cgColor
        AdminLabel.layer.borderWidth = 1.0
        PasswordLabel.layer.borderWidth = 1.0
        PasswordTextField.layer.borderWidth = 1.0
        PasswordButton.layer.borderWidth = 1.0
        InfoLabel.layer.borderWidth = 1.0
        NameLabel.layer.borderWidth = 1.0
        PriceLabel.layer.borderWidth = 1.0
        NameTextField.layer.borderWidth = 1.0
        PriceTextField.layer.borderWidth = 1.0
        AdminAddButton.layer.borderWidth = 1.0
        ReturnButton.layer.borderWidth = 1.0
        

    }
    @IBAction func ReturnButton(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func PasswordButton(_ sender: Any) {
        if (x == 0){
        let guess = PasswordTextField.text!
        if (guess == "ChuckNorris"){
            InfoLabel.isHidden = false
            NameLabel.isHidden = false
            PriceLabel.isHidden = false
            NameTextField.isHidden = false
            PriceTextField.isHidden = false
            AdminAddButton.isHidden = false
            PasswordTextField.text = ""
            InfoLabel.text = "What item would you like to add Mr. Admin Man/Woman?"
            AdminLabel.text = "What item would you like to remove Mr. Admin Man/Woman?"
            PasswordLabel.text = "Name of Item"
            x = 1
        } else if (x == 1){
            handler(PasswordTextField.text!)
        }
        }
        
    }
    
    @IBAction func AdminAddButton(_ sender: Any) {
        let newItemName = NameTextField.text!
        let newItemPrice = PriceTextField.text!
        if let condition: Double = Double(itemPrice){
            items[itemName] = condition
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}

