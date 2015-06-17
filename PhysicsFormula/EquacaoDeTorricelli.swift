//
//  EquacaoDeTorricelli.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit
import Foundation

class EquacaoDeTorricelli: UIView {
    @IBOutlet weak var v0: UITextField!
   
    @IBOutlet weak var a: UITextField!
    
    @IBOutlet weak var deltaD: UITextField!

    @IBOutlet weak var cleanButton: UIButton!
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
        v0.placeholder = v0.placeholder! + "\u{00B2}"
    
    }

    
    
    @IBAction func calculate(sender: AnyObject) {
    
        
        if(v0.text == "" || a.text == "" || deltaD.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let v0Ponto = v0.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let aPonto = a.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
             let deltaDPonto = deltaD.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            
            
            var V0Dobule = (v0Ponto as NSString).doubleValue
            var aDouble = (aPonto as NSString).doubleValue
            var deltaDDouble = (deltaDPonto as NSString).doubleValue
            
            var  result : Double = (V0Dobule * V0Dobule) + (2 * aDouble * deltaDDouble)
            
            result = sqrt(result)
            
            
            resultLabel.text = String(format: "%.2f",result) + " m/s"
        }

    
    
    }
    
    @IBAction func clean(sender: AnyObject) {
    
    v0.text = nil
    a.text = nil
        deltaD.text = nil
    resultLabel.text = String(format: "%.2f",0)
    
    
    }


}
