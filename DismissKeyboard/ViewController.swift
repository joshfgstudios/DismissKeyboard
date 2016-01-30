//
//  ViewController.swift
//  DismissKeyboard
//
//  Created by Joshua Ide on 30/01/2016.
//  Copyright © 2016 Fox Gallery Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtInput.delegate = self
        addDoneButtonToKeyboard()
    }
    
    func addDoneButtonToKeyboard() {
        let doneToolbar = UIToolbar(frame: CGRectMake(0, 0, 400, 35))
        doneToolbar.barStyle = UIBarStyle.Default
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: Selector("dismissKeyboard"))
        
        var items = [AnyObject]()
        items.append(flexSpace)
        items.append(done)
        doneToolbar.items = items as? [UIBarButtonItem]
        
        self.txtInput.inputAccessoryView = doneToolbar
        
    }
    
    func dismissKeyboard() {
        self.view.endEditing(true)
    }



}

