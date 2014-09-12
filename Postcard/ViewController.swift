//
//  ViewController.swift
//  Postcard
//
//  Created by David on 12/09/2014.
//  Copyright (c) 2014 Southstep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextfield: UITextField!
    
    @IBOutlet weak var enterMessageTextfield: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sentMailButtonPressed(sender: UIButton) {
        
        // code will evaluate when we press the button
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }

}

