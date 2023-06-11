//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emir on 11.06.2023.
//

import Foundation

struct CalculatorBrain {
    
    func getBmiValue(weight: Float, height: Float) -> String {
        let bmi = (weight * 10000) / (height * height)
        return String(format: "%.1f", bmi)
    }
    
}
