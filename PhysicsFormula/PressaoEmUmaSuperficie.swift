//
//  PressaoEmUmaSuperficie.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class PressaoEmUmaSuperficie: UIView {

    @IBOutlet weak var f: UITextField!
    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!

    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }

    
    
    
    
    @IBAction func calcular(sender: AnyObject) {
        
        
        
        if(f.text == "0" || a.text == "0" || f.text == "" || a.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let fPonto = f.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let aPonto = a.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var fDobule = (fPonto as NSString).doubleValue
            var aDouble = (aPonto as NSString).doubleValue
            
            
            var  result : Double = fDobule / aDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " Pa"
        }
        
    }
    
    @IBAction func clean(sender: AnyObject) {
        
        
        
        f.text = nil
        a.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
        
    }
}
