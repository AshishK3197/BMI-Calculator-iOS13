//
//  CalculatorBrain.swift
//  BMI Calculator
//

import UIKit

struct CalculatorBrain {
//    var height : Float?
//    var weight : Float?
    
    var bmiValue : BMI?
    
    mutating func calculateBMI(height: Float , weight: Float) {
       let bmi = weight / (height * height)
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "Eat More Junk!!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmi < 24.9{
            bmiValue = BMI(value: bmi, advice: "Be Fit Forever!!", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        }else{
            bmiValue = BMI(value: bmi, advice: "Stop Eating Junk!!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
    func getBMIValue()->String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice()-> String{
        let adviceRecvd = bmiValue?.advice ?? "Eat As You Like"
        return adviceRecvd
    }
    
    func getColor()-> UIColor{
        let colorRecvd = bmiValue?.color ?? UIColor.green
        return colorRecvd
    }
    
    
    
}
