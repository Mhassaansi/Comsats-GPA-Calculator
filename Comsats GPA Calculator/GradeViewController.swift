//
//  GradeViewController.swift
//  Comsats GPA Calculator
//
//  Created by shahzeb yousaf on 20/07/2018.
//  Copyright © 2018 shahzeb yousaf. All rights reserved.
//

import UIKit

class GradeViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var markLabel: UITextField!
    @IBOutlet weak var gpaLabel: UILabel!
    
    @IBOutlet weak var gpaLabel1: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.markLabel.delegate = self
        markLabel.keyboardType = .decimalPad

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let value1 = Int(markLabel.text!)!
        if value1 != 0 {
            
        if value1 < 50{
            gpaLabel.text = "0"
            gpaLabel1.text = "F"
            gpaLabel1.textColor = .red
            gpaLabel.textColor = .red
        }
        else if value1 >= 50 && value1 < 55 {
            gpaLabel.text = "1.3"
            gpaLabel1.text = "D"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 54 && value1 <= 59 {
            gpaLabel.text = "1.7"
            gpaLabel1.text = "C-"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 59 && value1 <= 64{
            gpaLabel.text = "2.0"
            gpaLabel1.text = "C"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 64 && value1 <= 69{
           gpaLabel.text = "2.3"
            gpaLabel1.text = "C+"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 69 && value1 <= 74{
            gpaLabel.text = "2.7"
            gpaLabel1.text = "B-"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 74 && value1 <= 79{
            gpaLabel.text = "3.0"
            gpaLabel1.text = "B"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 79 && value1 <= 84{
            gpaLabel.text = "3.3"
            gpaLabel1.text = "B+"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 84 && value1 <= 89{
            gpaLabel.text = "3.7"
            gpaLabel1.text = "A-"
            gpaLabel1.textColor = .green
            gpaLabel.textColor = .green
        }else if value1 > 89 && value1 <= 100{
            gpaLabel.text = "4.0"
            gpaLabel1.text = "A"
            gpaLabel1.textColor = .orange
            gpaLabel.textColor = .orange
         }
        }else{
            print("Error")
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        markLabel.resignFirstResponder()
        return (true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
