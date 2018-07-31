//
//  TViewController.swift
//  Comsats GPA Calculator
//
//  Created by shahzeb yousaf on 17/07/2018.
//  Copyright © 2018 shahzeb yousaf. All rights reserved.
//

import UIKit

class TViewController: UIViewController {
    
    @IBOutlet weak var ansLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func check(_ sender: UIButton) {
        print(totalGPA)
        ansLable.text = "\(finalResult)"
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
