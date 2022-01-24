//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Сергей on 23.01.2022.
//  Copyright © 2022 STDevelopment. All rights reserved.
//

import UIKit

struct CalcutaroBrain {
    var bmi: BMI?
   
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: UIColor.systemTeal)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "you are in good shape!", color: UIColor.systemGreen)
        } else{
            bmi = BMI(value: bmiValue, advice: "You're fat like a Cartman!", color: UIColor.systemPink)
        }
    }
    func getBMIvalue()->String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    func getAdvice()->String{
        let advice = bmi?.advice ?? "Has no advice for you"
        return advice
    }
    func getColor()->UIColor{
        let color = bmi?.color ?? UIColor.black
        return color
    }
}


