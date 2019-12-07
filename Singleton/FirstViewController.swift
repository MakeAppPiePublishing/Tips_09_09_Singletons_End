//
//  FirstViewController.swift
//  Singleton
//
//  Created by Steven Lipton on 12/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let formatter = NumberFormatter()
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var firstLabel: UILabel!
    @IBAction func stepperChanged(_ sender: UIStepper) {
        Model.shared.value = sender.value
        firstLabel.text = formatter.string(from: NSNumber(value: sender.value))
       
    }
    override func viewWillAppear(_ animated: Bool) {
        stepper.value = Model.shared.value
        firstLabel.text = formatter.string(from: NSNumber(value: stepper.value))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        // Do any additional setup after loading the view.
    }


}

