//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Emir on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
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
}

