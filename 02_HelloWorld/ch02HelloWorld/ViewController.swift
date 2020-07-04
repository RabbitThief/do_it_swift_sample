//
//  ViewController.swift
//  ch02HelloWorld
//
//  Created by Ki-su Kim on 7/2/20.
//  Copyright © 2020 Ki-su Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnEnd(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

