//
//  CelsiusParaFahrenheit.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class CelsiusParaFahrenheit: UIView {
    @IBOutlet weak var celsius: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    
    }
    
  

    
    
    @IBAction func calculate(sender: AnyObject) {
    
        if(celsius.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let celsiusPonto = celsius.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            var celsiusDobule = (celsiusPonto as NSString).doubleValue

            
            
            var  result : Double = (celsiusDobule * 1.8) + 32
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " ˚F"
        }
        
    }

        
    
  
    @IBAction func cleanButton(sender: AnyObject) {
    celsius.text = nil
       resultLabel.text = String(format: "%.2f",0)
    
    
    
    }

}
