//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by suyin Rodriguez on 4/22/20.
// Asigment: Chapter:1
//  Copyright © 2020 user169393. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Calculate_BMI: UIButton!
    @IBOutlet weak var height_text: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var weight_text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
        @IBAction func calculate(_ sender: Any) {
           
            let weight = Double(weight_text.text!)!  //Create constants variables for wieght and height
            let height = Double(height_text.text!)!
            
            let bmi = weight/(height*height) // Calculate BNI
            var classification:String
            
            if bmi<18.9{
                classification = "Underweight"}
            
            else if bmi<24.9 {
                classification="Healthy weight"}
            
            else if bmi<29.9{
                classification = "Overweight"
            }
            else{
                classification = "Obese"
            }
            
            let formatter = String(format:"%.2f",bmi)
            result.text = "BMI: \(formatter),\(classification)"
        }
    
}

