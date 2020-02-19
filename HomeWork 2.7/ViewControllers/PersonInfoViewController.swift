//
//  PersonInfoViewController.swift
//  HomeWork 2.7
//
//  Created by Macbook on 19.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var number: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = number
        emailLabel.text = email
        
    }

}
