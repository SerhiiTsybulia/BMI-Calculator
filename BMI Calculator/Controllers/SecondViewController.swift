//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Сергей on 22.01.2022.
//  Copyright © 2022 STDevelopment. All rights reserved.
//

import UIKit
class SecondViewContorller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor =   .red
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}

