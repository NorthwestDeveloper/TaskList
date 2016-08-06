//
//  SecondViewController.swift
//  TaskList
//
//  Created by Admin on 8/4/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func add(_ sender: AnyObject) {
    
        var items:[String]
    
        let itemsObject = UserDefaults.standard.object(forKey: "items")
    
        if let tempItems = itemsObject as? [String] {
        
            items = tempItems
            
            items.append(itemTextField.text!)
        
        } else {
            
            items = [itemTextField.text!]
            
        }
    
        UserDefaults.standard.set(items, forKey: "items")
    
        itemTextField.text = ""
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
