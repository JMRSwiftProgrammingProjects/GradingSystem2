//
//  ViewController.swift
//  Project: GradingSystem2
//  Input: Number Grade from the User
//  Output: The Letter grade of the user
//  Purpose: create a basic app that allows the user to see their letter grade based on their number grade
//  Created by Jocelyn M. Rodriguez on 4/12/20.
//  Copyright © 2020 CUNY Borough of Manhattan Community College. All rights reserved.


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        let d: Double = Double (s)!;
        
        
        if d > 100 {
            label.text = "Impossible!"
            label.backgroundColor = .red
            label.textColor = .white
        } else if d >= 89 {
            label.text = "Your grade is an A"
            label.backgroundColor = .green
        } else if d >= 79 {
            label.text = "Your grade is an B"
            label.backgroundColor = .green
        } else if d >= 69 {
            label.text = "Your grade is an C"
            label.backgroundColor = .green
        } else if d >= 65 {
            label.text = "Your grade is an D"
            label.backgroundColor = .yellow
            label.textColor = .black
        } else {
            label.text = "Your grade is an F. \n You must retake this class."
            label.backgroundColor = .red
            label.textColor = .white
        }
        
    }
    
}
