//
//  SecondViewController.swift
//  TabSwiftApp
//
//  Created by Eliasz Sawicki on 19/07/15.
//  Copyright (c) 2015 Eliasz Sawicki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        detailsTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItemAction(sender: UIButton) {
        itemsMgr.addItem(nameTextField.text!, details: detailsTextField.text!)
        nameTextField.resignFirstResponder()
        detailsTextField.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    
    

}

