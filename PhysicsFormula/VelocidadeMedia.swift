//
//  VelocidadeMedia.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 15/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class VelocidadeMedia: UIView {
    @IBOutlet weak var deltaS: UITextField!
    @IBOutlet weak var deltaT: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }
    
    
    @IBAction func calcular(sender: AnyObject) {
        

        
        if(deltaT.text == "0" || deltaT.text == "" || deltaS.text == "" || deltaS.text == "0"){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            
            let deltaSPonto = deltaS.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            let deltaTPonto = deltaT.text.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var deltaSDobule = (deltaSPonto as NSString).doubleValue
            var deltaTDouble = (deltaTPonto as NSString).doubleValue
            
            
            var  result : Double = deltaSDobule/deltaTDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result) + " m/s"
        }
        
    }
    
    @IBAction func clean(sender: AnyObject) {
        

        
        deltaS.text = nil
        deltaT.text = nil
        
        resultLabel.text = String(format: "%.2f",0)
        
    }
}
