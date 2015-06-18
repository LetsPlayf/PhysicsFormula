//
//  KelvinParaCelsius.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class KelvinParaCelsius: UIView {


    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var k: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var cleanButton: UIButton!
    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
        
    }
    
    
    @IBAction func calculate(sender: AnyObject) {
        
        if(k.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
        }else{
            
            let kPonto = k.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            var kDouble = (kPonto as NSString).doubleValue
            
            
            
            var  result : Double = kDouble - 273.15
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " ˚C"
        }

    
    
    
    
    }
    
   
    @IBAction func clean(sender: AnyObject) {
   
    k.text = nil
    resultLabel.text = String(format: "%.2f",0)
    
    
    
    }
    
    
    
}
