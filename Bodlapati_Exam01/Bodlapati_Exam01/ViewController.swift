//
//  ViewController.swift
//  Bodlapati_Exam01
//
//  Created by Bodlapati,Sowmya Reddy on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headingOutlet: UILabel!
    
    
    @IBOutlet weak var hfeetOutlet: UITextField!
    
    
    @IBOutlet weak var hinchesOutlet: UITextField!
    
    @IBOutlet weak var weightOutlet: UITextField!
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func caluclate(_ sender: UIButton) {
        
        var feet = Double(hfeetOutlet.text!)
        var weight = Double(weightOutlet.text!)
        var inches = Double(hinchesOutlet.text!)
        
        var height: Double = (feet! * 12.0 ) + inches!
        
        var bmi = Double(703.0 * (weight! / (height * height)))
        
        if(bmi <= 18.5){
            resultOutlet.text =  "Your Body Mass Index is \(bmi) \rThis is considered underweight"
            imageOutlet.image = UIImage(named: "underWeight")
        }
        else{
            resultOutlet.text = "No Result"
        }
}

}
