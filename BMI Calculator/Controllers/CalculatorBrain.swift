//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Oksana on 21.10.2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
            if bmiValue < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            } else if bmiValue > 18.5 && bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "You eat just right", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            } else if bmiValue > 24.9 && bmiValue < 29.9 {
                bmi = BMI(value: bmiValue, advice: "Someone needs less treats", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
            } else {
                bmi = BMI(value: bmiValue, advice: "A diet maybe?", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            }
        }
        
            
        
    }
    

