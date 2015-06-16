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
    
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }
    
    
    @IBAction func calcular(sender: AnyObject) {
        
        
        
        if(deltaV.text == "0" || deltaV.text == "" || deltaT.text == "" || deltaT.text == "0"){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let deltaSPonto = deltaV.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let deltaTPonto = deltaT.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var deltaSDobule = (deltaSPonto as NSString).doubleValue
            var deltaTDouble = (deltaTPonto as NSString).doubleValue
            
            
            var  result : Double = deltaSDobule/deltaTDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result)
        }
        
    }
    
    @IBAction func clean(sender: AnyObject) {
        
        
        
        deltaV.text = nil
        deltaT.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
        
    }

    
    
    

}
