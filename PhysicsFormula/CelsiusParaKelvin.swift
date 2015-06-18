//
//  CelsiusParaKelvin.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class CelsiusParaKelvin: UIView {

@IBOutlet weak var resultButton: UIButton!
@IBOutlet weak var cleanButton: UIButton!
@IBOutlet weak var c: UITextField!
@IBOutlet weak var resultLabel: UILabel!
    
    
    
   
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
        
    }
    
    
    
    @IBAction func calculate(sender: AnyObject) {
    
        if(c.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
        }else{
            
            let cPonto = c.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            var cDouble = (cPonto as NSString).doubleValue
            
            
            
            var  result : Double = cDouble + 273.15
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " ˚K"
        }
        

    
    
    
    }
    
    
    
    
    @IBAction func cleanButton(sender: AnyObject) {
    c.text = nil
       resultLabel.text = String(format: "%.2f",0)
    
    }


}
