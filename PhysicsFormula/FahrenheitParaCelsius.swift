//
//  FahrenheitParaCelsius.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FahrenheitParaCelsius: UIView {
    @IBOutlet weak var f: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var cleanButton: UIButton!

    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
        
    }
    
    
    @IBAction func calculate(sender: AnyObject) {
        if(f.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
        }else{
            
            let fPonto = f.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            var fDobule = (fPonto as NSString).doubleValue
            
            
            
            var  result : Double = (fDobule - 32) / 1.8
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " ˚C"
        }


    
    
    }
    
    @IBAction func clean(sender: AnyObject) {
   
    f.text = nil
    resultLabel.text = String(format: "%.2f",0)
    
    }
    
}
