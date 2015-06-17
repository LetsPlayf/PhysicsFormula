//
//  PressaoHidrostatica.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class PressaoHidrostatica: UIView {

    @IBOutlet weak var d: UITextField!

    @IBOutlet weak var g: UITextField!
    @IBOutlet weak var h: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var cleanButton: UIButton!

    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }
    
    
    @IBAction func calculate(sender: AnyObject) {
   
        if(g.text == "" || d.text == "" || h.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let gPonto = g.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let dPonto = d.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
             let hPonto = h.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var gDobule = (gPonto as NSString).doubleValue
            var dDouble = (dPonto as NSString).doubleValue
            var hDouble = (hPonto as NSString).doubleValue
            
            var  result : Double = gDobule * dDouble * hDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " N/m\u{00B2}"
        }

    
    
    
    
    }

   
    @IBAction func clean(sender: AnyObject) {
  
        
        g.text = nil
        d.text = nil
        h.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
    
    
    
    
    
    }




}
