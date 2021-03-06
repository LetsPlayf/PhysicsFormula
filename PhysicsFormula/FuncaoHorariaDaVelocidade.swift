//
//  FuncaoHorariaDaVelocidade.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FuncaoHorariaDaVelocidade: UIView {

    @IBOutlet weak var v0: UITextField!
    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var t: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }

    
    
    
    
    @IBAction func calculate(sender: AnyObject) {
        if(v0.text == "" || a.text == "" || t.text == ""){
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
        }else{
            
            let v0Ponto = v0.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)

            let aPonto = a.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)

            
            let tPonto = t.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)

            var v0Double = (v0Ponto as NSString).doubleValue
            var aDouble = (aPonto as NSString).doubleValue
            var tDouble = (tPonto as NSString).doubleValue
            
            var result : Double = v0Double + (aDouble * tDouble)
            
            resultLabel.text = String(format: "%.2f",result) + " m/s"
            
            
        }
    
    
    
    
    }
    
    
    @IBAction func clean(sender: AnyObject) {
    v0.text = nil
    a.text = nil
    t.text = nil
    resultLabel.text = String(format: "%.2f",0)
    
    }
}
