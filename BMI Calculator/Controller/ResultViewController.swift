//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Emir on 11.06.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }
    
    @IBAction func goBackPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
