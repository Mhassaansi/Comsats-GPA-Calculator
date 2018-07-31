//
//  SViewController.swift
//  Comsats GPA Calculator
//
//  Created by shahzeb yousaf on 17/07/2018.
//  Copyright © 2018 shahzeb yousaf. All rights reserved.
//

import UIKit

var total = 0.0
var totalGPA = 0.0
var totalSubjects = 0
var finalResult : Double = 0

class SViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var totalSubjectTextField: UITextField!
    
    @IBOutlet weak var subjectLabel1: UILabel!
    @IBOutlet weak var subjectLabel2: UILabel!
    @IBOutlet weak var subjectLabel3: UILabel!
    @IBOutlet weak var subjectLabel4: UILabel!
    @IBOutlet weak var subjectLabel5: UILabel!
    @IBOutlet weak var subjectLabel6: UILabel!
    
    //GPA TextField..
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var textField6: UITextField!
    
    //CreditHour's....
    @IBOutlet weak var CTextField1: UITextField!
    
    @IBOutlet weak var CTectField2: UITextField!
    
    @IBOutlet weak var CTextField3: UITextField!
    
    @IBOutlet weak var CTextField4: UITextField!
    
    @IBOutlet weak var CTextField5: UITextField!
    
    @IBOutlet weak var CTextField6: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //For KeyBoard Type GPA
        textField1.keyboardType = .decimalPad
        textField2.keyboardType = .decimalPad
        textField3.keyboardType = .decimalPad
        textField4.keyboardType = .decimalPad
        textField5.keyboardType = .decimalPad
        textField6.keyboardType = .decimalPad
        
        //For KeyBoard Type Credit
        CTextField1.keyboardType = .decimalPad
        CTectField2.keyboardType = .decimalPad
        CTextField3.keyboardType = .decimalPad
        CTextField4.keyboardType = .decimalPad
        CTextField5.keyboardType = .decimalPad
        CTextField6.keyboardType = .decimalPad
        totalSubjectTextField.keyboardType = .numberPad
        
        self.textField1.delegate = self
        self.textField2.delegate = self
        self.textField3.delegate = self
        self.textField4.delegate = self
        self.textField5.delegate = self
        self.textField6.delegate = self
        self.CTextField1.delegate = self
        self.CTectField2.delegate = self
        self.CTextField3.delegate = self
        self.CTextField4.delegate = self
        self.CTextField5.delegate = self
        self.CTextField6.delegate = self
        
        ///For TextField of GPA
        
        textField1.isHidden = true
        textField2.isHidden = true
        textField3.isHidden = true
        textField4.isHidden = true
        textField5.isHidden = true
        textField6.isHidden = true
        
        //For TextField of credit Hour;s
        
        CTextField1.isHidden = true
        CTectField2.isHidden = true
        CTextField3.isHidden = true
        CTextField4.isHidden = true
        CTextField5.isHidden = true
        CTextField6.isHidden = true
        
        //For Subject Label
        subjectLabel1.isHidden =  true
        subjectLabel2.isHidden =  true
        subjectLabel3.isHidden =  true
        subjectLabel4.isHidden =  true
        subjectLabel5.isHidden =  true
        subjectLabel6.isHidden =  true
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        totalSubjects = Int(totalSubjectTextField.text!)!
        if totalSubjects == 0{
            print("Invalid Input")
        }else{
            print(totalSubjects)
         if totalSubjects == 6{
            //GPA TextField Show
            textField1.isHidden = false
            textField2.isHidden = false
            textField3.isHidden = false
            textField4.isHidden = false
            textField5.isHidden = false
            textField6.isHidden = false
            /// Credit Hour TextField Show
            CTextField1.isHidden = false
            CTectField2.isHidden = false
            CTextField3.isHidden = false
            CTextField4.isHidden = false
            CTextField5.isHidden = false
            CTextField6.isHidden = false
            /// Subject TextField Show
            subjectLabel1.isHidden =  false
            subjectLabel2.isHidden =  false
            subjectLabel3.isHidden =  false
            subjectLabel4.isHidden =  false
            subjectLabel5.isHidden =  false
            subjectLabel6.isHidden =  false
            
        }else if totalSubjects == 5 {
            textField1.isHidden = false
            textField2.isHidden = false
            textField3.isHidden = false
            textField4.isHidden = false
            textField5.isHidden = false
            ///
            CTextField1.isHidden = false
            CTectField2.isHidden = false
            CTextField3.isHidden = false
            CTextField4.isHidden = false
            CTextField5.isHidden = false
            ///
            subjectLabel1.isHidden =  false
            subjectLabel2.isHidden =  false
            subjectLabel3.isHidden =  false
            subjectLabel4.isHidden =  false
            subjectLabel5.isHidden =  false
            
        }else if totalSubjects == 4{
            textField1.isHidden = false
            textField2.isHidden = false
            textField3.isHidden = false
            textField4.isHidden = false
            //
            CTextField1.isHidden = false
            CTectField2.isHidden = false
            CTextField3.isHidden = false
            CTextField4.isHidden = false
            ///
            subjectLabel1.isHidden =  false
            subjectLabel2.isHidden =  false
            subjectLabel3.isHidden =  false
            subjectLabel4.isHidden =  false
           
           
        }else if totalSubjects == 3{
            textField1.isHidden = false
            textField2.isHidden = false
            textField3.isHidden = false
            //
            CTextField1.isHidden = false
            CTectField2.isHidden = false
            CTextField3.isHidden = false
            ///
            subjectLabel1.isHidden =  false
            subjectLabel2.isHidden =  false
            subjectLabel3.isHidden =  false
            
            
            
        }else if totalSubjects == 2{
            textField1.isHidden = false
            textField2.isHidden = false
            //
            CTextField1.isHidden = false
            CTectField2.isHidden = false
            ///
            subjectLabel1.isHidden =  false
            subjectLabel2.isHidden =  false
            
            
        }else{
                print("error")
        }
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        CTextField1.resignFirstResponder()
        CTectField2.resignFirstResponder()
        CTextField3.resignFirstResponder()
        CTextField4.resignFirstResponder()
        CTextField5.resignFirstResponder()
        CTextField6.resignFirstResponder()
        
        
        return (true)
    }
    
    @IBAction func proceedButton(_ sender: UIButton) {
        //GPA Fields..
        let value1 = Double(textField1.text!)
        let value2 = Double(textField2.text!)
        let value3 = Double(textField3.text!)
        let value4 = Double(textField4.text!)
        let value5 = Double(textField5.text!)
        let value6 = Double(textField6.text!)
        //CreditHours
        let value7 = Double(CTextField1.text!)
        let value8 = Double(CTectField2.text!)
        let value9 = Double(CTextField3.text!)
        let value10 = Double(CTextField4.text!)
        let value11 = Double(CTextField5.text!)
        let value12 = Double(CTextField6.text!)
        
        //total = ( + (value2 * value8) + (value3 * value9) + (value4 * value10) + (value5 + value11) + (value6 * value12))
        if (value1 == nil) && (value2 == nil) && (value3 == nil) && (value4 == nil) && (value5 == nil) && (value6 == nil) && (value7 == nil) && (value8 == nil) && (value9 == nil) && (value10 == nil) && (value11 == nil) && (value12 == nil){
            print("Wrong input")
            
        }else{
            
        if totalSubjects == 2{
            let ans1 = (value1! * value7!)
            let ans2 = (value2! * value8!)
            total = ans1 + ans2
             let total1 = value7! + value8!
            totalGPA = total/total1
            finalResult = Double(round(totalGPA*100)/100)
        }else if totalSubjects == 3{
            let ans1 = (value1! * value7!)
            let ans2 = (value2! * value8!)
            let ans3 = (value3! * value9!)
            total = ans1 + ans2 + ans3
            let total1 = value7! + value8! + value9!
            totalGPA = total/total1
            finalResult = Double(round(totalGPA*100)/100)
        }else if totalSubjects == 4 {
            let ans1 = (value1! * value7!)
            let ans2 = (value2! * value8!)
            let ans3 = (value3! * value9!)
            let ans4 = (value4! * value10!)
            total = ans1 + ans2 + ans3 + ans4
            let total1 = value7! + value8! + value9! + value10!
            totalGPA = total/total1
            finalResult = Double(round(totalGPA*100)/100)
        }else if totalSubjects == 5{
            let ans1 = (value1! * value7!)
            let ans2 = (value2! * value8!)
            let ans3 = (value3! * value9!)
            let ans4 = (value4! * value10!)
            let ans5 = (value5! * value11!)
            total = ans1 + ans2 + ans3 + ans4 + ans5
            let total1 = value7! + value8! + value9! + value10! + value11!
            totalGPA = total/total1
            finalResult = Double(round(totalGPA*100)/100)
        }else if totalSubjects == 6{
            let ans1 = (value1! * value7!)
            let ans2 = (value2! * value8!)
            let ans3 = (value3! * value9!)
            let ans4 = (value4! * value10!)
            let ans5 = (value5! * value11!)
            let ans6 = (value6! * value12!)
            
            total = ans1 + ans2 + ans3 + ans4 + ans5 + ans6
            let total1 = value7! + value8! + value9! + value10! + value11! + value12!
            totalGPA = total/total1
            finalResult = Double(round(totalGPA*100)/100)
        }
        }
        
        /*let ans1 = (value1! * value7!)
        let ans2 = (value2! * value8!)
        let ans3 = (value3! * value9!)
        let ans4 = (value4! * value10!)
        let ans5 = (value5! * value11!)
        let ans6 = (value6! * value12!)
        
        total = ans1 + ans2 + ans3 + ans4 + ans5 + ans6*/
        /*let total1 = value7! + value8! + value9! + value10! + value11! + value12!
        
        totalGPA = total/total1
        */
        //print(totalGPA)
        
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
