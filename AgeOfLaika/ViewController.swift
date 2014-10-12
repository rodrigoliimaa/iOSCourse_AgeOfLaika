//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Rodrigo Lima on 10/11/14.
//  Copyright (c) 2014 Rodrigo Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertYears(sender: AnyObject) {
        let humanYears = humanYearsTextField.text.toInt()!
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanYears*7)" + " Human Years"
        humanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertRealYears(sender: AnyObject) {
        let doubleFromTextField = Double((humanYearsTextField.text as NSString).doubleValue)
        var realDogYears:Double
        
        if(doubleFromTextField > 2) {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        dogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }

}

