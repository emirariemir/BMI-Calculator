//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emir on 11.06.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(weight: Float, height: Float) -> BMI? {
        let calculatedBmi = (weight * 10000) / (height * height)
        
        if calculatedBmi < 18.5 {
            bmi = BMI(bmiValue: calculatedBmi, advice: "Eat more pasta!", color: UIColor(red: 83/255.0, green: 127/255.0, blue: 231/255.0, alpha: 1))
            return bmi
        } else if calculatedBmi < 24.9 {
            bmi = BMI(bmiValue: calculatedBmi, advice: "Good for you!", color: UIColor(red: 34/255.0, green: 166/255.0, blue: 153/255.0, alpha: 1))
            return bmi
        } else {
            bmi = BMI(bmiValue: calculatedBmi, advice: "Eat less snack!", color: UIColor(red: 242/255.0, green: 76/255.0, blue: 61/255.0, alpha: 1))
            return bmi
        }
    }
    
    func getBmiValue(weight: Float, height: Float) -> String {
        let bmi = (weight * 10000) / (height * height)
        return String(format: "%.1f", bmi)
    }
    
}
