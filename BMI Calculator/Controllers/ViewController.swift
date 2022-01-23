//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Сергей on 21.01.2022.
//  Copyright © 2022 STDevelopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weigthSlider: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLable.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLable.text = "\(weight)Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weigthSlider.value
        
        let bmi = weight / pow(height,2)
        print(bmi)
        
        let secondVC = SecondViewContorller()
        
        self.present(secondVC, animated: true, completion: nil)
    }
    

}

