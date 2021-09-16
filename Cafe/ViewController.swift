//
//  ViewController.swift
//  Cafe
//
//  Created by Benjamin Berman on 9/10/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var IntroLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var SortedLabel: UILabel!
    @IBOutlet weak var NewNameLabel: UILabel!
    @IBOutlet weak var NewPriceLabel: UILabel!
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var NewNameTextField: UITextField!
    @IBOutlet weak var NewPriceTextField: UITextField!
    
    @IBOutlet weak var AddItemButton: UIButton!
    @IBOutlet weak var SortNamesButton: UIButton!
    @IBOutlet weak var SortPricesButton: UIButton!
    @IBOutlet weak var AdminButton: UIButton!
    @IBOutlet weak var NewItemButton: UIButton!
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    
    var items : [String: Double] = ["Black":3.99, "Lattee":3.99, "Americano":4.99, "Espresso":2.99, "Macchiato":4.99]
    var yourItems : [String: Double] = [:]
    var x: Double = 0.0
    var z = 0
    
    override func viewDidLoad() {
        NameTextField.delegate = self
        NewNameTextField.delegate = self
        NewPriceTextField.delegate = self
        super.viewDidLoad()
        SortedLabel.isHidden = true
        NewItemButton.isHidden = true
        NewPriceLabel.isHidden = true
        NewNameLabel.isHidden = true
        NewNameTextField.isHidden = true
        NewPriceTextField.isHidden = true
        let black = UIColor.black
        IntroLabel.layer.borderColor = black.cgColor
        IntroLabel.layer.borderWidth = 1.0
        NameLabel.layer.borderColor = black.cgColor
        NameLabel.layer.borderWidth = 1.0
        InfoLabel.layer.borderColor = black.cgColor
        InfoLabel.layer.borderWidth = 1.0
        SortedLabel.layer.borderColor = black.cgColor
        SortedLabel.layer.borderWidth = 1.0
        NewNameLabel.layer.borderColor = black.cgColor
        NewNameLabel.layer.borderWidth = 1.0
        NewPriceLabel.layer.borderColor = black.cgColor
        NewPriceLabel.layer.borderWidth = 1.0
        
        AddItemButton.layer.borderColor = black.cgColor
        AddItemButton.layer.borderWidth = 1.0
        SortNamesButton.layer.borderColor = black.cgColor
        SortNamesButton.layer.borderWidth = 1.0
        SortPricesButton.layer.borderColor = black.cgColor
        SortPricesButton.layer.borderWidth = 1.0
        NewItemButton.layer.borderColor = black.cgColor
        NewItemButton.layer.borderWidth = 1.0
        
        NameTextField.layer.borderColor = black.cgColor
        NameTextField.layer.borderWidth = 1.0
        NewNameTextField.layer.borderColor = black.cgColor
        NewNameTextField.layer.borderWidth = 1.0
        NewPriceTextField.layer.borderColor = black.cgColor
        NewPriceTextField.layer.borderWidth = 1.0
        if(z == 2){
            NewItemButton.isHidden = false
            NewPriceLabel.isHidden = false
            NewNameLabel.isHidden = false
            NewNameTextField.isHidden = false
            NewPriceTextField.isHidden = false
        } else if (z == 0 || z == 1){
            NewItemButton.isHidden = true
            NewPriceLabel.isHidden = true
            NewNameLabel.isHidden = true
            NewNameTextField.isHidden = true
            NewPriceTextField.isHidden = true
        }
    }
    
    @IBAction func AddItemButton(_ sender: Any) {
        if (z == 0){
        SortedLabel.isHidden = true
        let itemName: String = NameTextField.text!
            if let ooga = items[itemName]{
                x += ooga
                yourItems[itemName] = ooga
            } else{
                print("Not found")
            }
            InfoLabel.text = "Total Price: \(x)"
        }
        if (z == 1){
            let password = NameTextField.text!
            if (password == "ChuckNorris"){
                z = 2
                print("correct")
                NameTextField.text = ""
                NewItemButton.isHidden = false
                NewPriceLabel.isHidden = false
                NewNameLabel.isHidden = false
                NewNameTextField.isHidden = false
                NewPriceTextField.isHidden = false
            }
        }
        if (z == 2){
            NameLabel.text = "Remove Item"
            
            let itemName = NameTextField.text!
            items[itemName] = nil
            NameTextField.resignFirstResponder()
            NewNameTextField.resignFirstResponder()
            NewPriceTextField.resignFirstResponder()
        }
    }
        
    @IBAction func AdminButton(_ sender: Any) {
        if (z == 0){
            z = 1
            IntroLabel.text = "Welcome to Admin Panel! What is the password?"
            NameLabel.text = "Password: "
            SortedLabel.isHidden = true
            SortNamesButton.isHidden = true
            SortPricesButton.isHidden = true
            InfoLabel.isHidden = true
            NameTextField.text = ""
        } else if (z == 1 || z == 2){
            z = 0
            IntroLabel.text = "Welcome to the Cafe! What would you like to buy?"
            NameLabel.text = "Name of Item: "
            SortNamesButton.isHidden = false
            SortPricesButton.isHidden = false
            InfoLabel.isHidden = false
            NameTextField.text = ""
            NewItemButton.isHidden = true
            NewPriceLabel.isHidden = true
            NewNameLabel.isHidden = true
            NewNameTextField.isHidden = true
            NewPriceTextField.isHidden = true
            NameTextField.resignFirstResponder()
            NewNameTextField.resignFirstResponder()
            NewPriceTextField.resignFirstResponder()
        }
        
    }
    
        
    @IBAction func SortNameButton(_ sender: Any) {
        SortedLabel.isHidden = false
        let namesSorted = yourItems.sorted(by: <)
        SortedLabel.text = "\(namesSorted)"
        NameTextField.resignFirstResponder()
        NewNameTextField.resignFirstResponder()
        NewPriceTextField.resignFirstResponder()
    }
    
    @IBAction func SortPricesButton(_ sender: Any) {
        SortedLabel.isHidden = false
        let priceSorted = yourItems.sorted(by: { $0.value < $1.value })
        SortedLabel.text = "\(priceSorted)"
        NameTextField.resignFirstResponder()
        NewNameTextField.resignFirstResponder()
        NewPriceTextField.resignFirstResponder()
        
    }
    @IBAction func NewItemButton(_ sender: Any) {
        SortedLabel.isHidden = true
        let itemName: String = NewNameTextField.text!
        let itemPrice = NewPriceTextField.text!
        if let condition: Double = Double(itemPrice){
            items[itemName] = condition
            NameTextField.resignFirstResponder()
            NewNameTextField.resignFirstResponder()
            NewPriceTextField.resignFirstResponder()    }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            NameTextField.resignFirstResponder()
            NewNameTextField.resignFirstResponder()
            NewPriceTextField.resignFirstResponder()
            return true
            
        }
}
        
}


    


