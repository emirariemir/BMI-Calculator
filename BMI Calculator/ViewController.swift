//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Emir on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var bmiValue = "0.0"

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = Int(sender.value)
        heightLabel.text = "\(height)cm"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var height = heightSlider.value
        let weight = weightSlider.value
        
        height = height / 100
        
        let bmi = (weight) / (height * height)
        
        bmiValue = String(format: "%.1f", bmi)
        print(bmiValue)
        print(bmi)
        print(height)
        print(weight)
        
        performSegue(withIdentifier: "goResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResultView" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

