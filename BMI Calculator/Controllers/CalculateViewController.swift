//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  var calculatorBrain = CalculatorBrain()
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  @IBAction func heightChanged(_ sender: UISlider) {
    heightLabel.text = "\(String(format: "%.2f", sender.value))m"
  }
  
  @IBAction func weightChanged(_ sender: UISlider) {
    weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
  }
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    
    calculatorBrain.calculateBMI(height: height, weight: weight)
    
    self.performSegue(withIdentifier: "gotoResults", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "gotoResults") {
      let vc = segue.destination as! ResultsViewController
      vc.bmiValue = calculatorBrain.getBMIValue()
      print(calculatorBrain.getBMIValue())
    }
  }
}

