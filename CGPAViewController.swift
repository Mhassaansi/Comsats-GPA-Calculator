//
//  CGPAViewController.swift
//  Comsats GPA Calculator
//
//  Created by shahzeb yousaf on 19/07/2018.
//  Copyright © 2018 shahzeb yousaf. All rights reserved.
//

import UIKit

class CGPAViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var result: UILabel!
    
    
    
    @IBOutlet weak var prevCGPA: UITextField!
    
    @IBOutlet weak var currSGPA: UITextField!
    
    @IBOutlet weak var cCreditHour: UITextField!
    
    @IBOutlet weak var pCreditHour: UITextField!
    
    //
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.prevCGPA.delegate = self
        self.cCreditHour.delegate = self
        self.currSGPA.delegate = self
        self.pCreditHour.delegate = self
        
        prevCGPA.keyboardType = .decimalPad
        cCreditHour.keyboardType = .decimalPad
        currSGPA.keyboardType = .decimalPad
        pCreditHour.keyboardType = .decimalPad
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        prevCGPA.resignFirstResponder()
        cCreditHour.resignFirstResponder()
        currSGPA.resignFirstResponder()
        pCreditHour.resignFirstResponder()
        
        
        return (true)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let value1 = Double(prevCGPA.text!)!
        let value2 = Double(currSGPA.text!)!
        let creditValue1 = Double(cCreditHour.text!)!
        let creditValue2 =  Double(pCreditHour.text!)!
        if (value1 != 0.0) && (value2 != 0.0) && (creditValue1 != 0) && (creditValue2 != 0){
        let result1 = value1 * creditValue1
        let result2 = value2 * creditValue2
        let final = result1 + result2
        let addAfterValue = creditValue1 + creditValue2
        let Result3 = final / addAfterValue
        let finalresult = Double(round(Result3*100)/100)
        print(finalresult)
        result.text = "\(finalresult)"
        
        }else{
            print("Error")
        }
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
