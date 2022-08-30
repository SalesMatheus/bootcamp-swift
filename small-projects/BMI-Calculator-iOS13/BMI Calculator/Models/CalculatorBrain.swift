//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matheus Sales on 30/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0

    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
        return bmiToOneDecimalPlace
    }
}
