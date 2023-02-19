//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Michael Jones on 2/19/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
  
  var bmiValue: String?
  
  @IBOutlet weak var bmiLabel: UILabel!
  
  @IBOutlet weak var adviceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    bmiLabel.text = bmiValue
  }
  
  @IBAction func recalculatePressed(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
  
}
