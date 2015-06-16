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
    
    
    
    
    @IBAction func calcular(sender: AnyObject) {
        
        
        if(deltaT.text == "0" || deltaT.text == "" || deltaS.text == "" || deltaS.text == "0"){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            var deltaSDobule = (deltaS.text as NSString).doubleValue
            var deltaTDouble = (deltaT.text as NSString).doubleValue
            
            
            var  result : Double = deltaSDobule/deltaTDouble
            
            
            
            resultLabel.text = String(format: "%.2f",result)
        }
        
    }
    
    @IBAction func clean(sender: AnyObject) {
        
        deltaS.text = nil
        deltaT.text = nil
        
    }
}
