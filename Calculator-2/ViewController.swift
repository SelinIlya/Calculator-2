//
//  ViewController.swift
//  Calculator-2
//
//  Created by Ilya Selin on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber : Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        let number = Double(displayLabel.text!)!
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = String(number / 100)
            }
        }
    }
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text?.append(numValue)
            }
            
        }
    }
}

