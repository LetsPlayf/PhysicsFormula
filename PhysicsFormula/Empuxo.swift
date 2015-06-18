//
//  Empuxo.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class Empuxo: UIView {
    @IBOutlet weak var df: UITextField!
    @IBOutlet weak var g: UITextField!
    @IBOutlet weak var vfd: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var cleanButton: UIButton!

    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }
 
    @IBAction func calculate(sender: AnyObject) {
        if(df.text == "" || g.text == "" || vfd.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let gPonto = g.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let dfPonto = df.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let vfdPonto = vfd.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var gDobule = (gPonto as NSString).doubleValue
            var dfDouble = (dfPonto as NSString).doubleValue
            var vfdDouble = (vfdPonto as NSString).doubleValue
            
            var  result : Double = dfDouble * gDobule * vfdDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " N"
            
            
            
        }

    
    
    }

    @IBAction func clean(sender: AnyObject) {
        g.text = nil
        df.text = nil
        vfd.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
    
    }





}
