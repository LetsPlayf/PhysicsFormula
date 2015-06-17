//
//  Densidade.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class Densidade: UIView {
    

    @IBOutlet weak var m: UITextField!
    @IBOutlet weak var v: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
  
    @IBOutlet weak var cleanButton: UIButton!

    @IBOutlet weak var resultButton: UIButton!

    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }

    
    
    @IBAction func calculate(sender: AnyObject) {
        if(m.text == "0" || v.text == "0" || m.text == "" || v.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let mPonto = m.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let vPonto = v.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var mDobule = (mPonto as NSString).doubleValue
            var vDouble = (vPonto as NSString).doubleValue
            
            
            var  result : Double = mDobule / vDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " g/cm\u{00B3}"
        }

    
    
    
    
    }

    @IBAction func clean(sender: AnyObject) {
    
        m.text = nil
        v.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
    
    
    }
   
}
