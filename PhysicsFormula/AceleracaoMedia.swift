//
//  AceleracaoMedia.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class AceleracaoMedia: UIView {

    @IBOutlet weak var deltaV: UITextField!
    
    @IBOutlet weak var deltaT: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        
        deltaV.resignFirstResponder()
    }
    
    @IBAction func calculate(sender: AnyObject) {
        if(deltaV.text == "0" || deltaT.text == "" || deltaV.text == "" || deltaT.text == "0"){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
          let deltaVPonto = deltaV.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
          let deltaTPonto = deltaT.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            var deltaVDobule = (deltaVPonto as NSString).doubleValue
            var deltaTDouble = (deltaTPonto as NSString).doubleValue
            
            
            
            
            var  result : Double = deltaVDobule/deltaTDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result)
        }
        
    }

 
    
    
    
    
    @IBAction func clean(sender: AnyObject) {
   
    deltaV.text = nil
        deltaT.text = nil
    resultLabel.text = "0.0"
    }

}
