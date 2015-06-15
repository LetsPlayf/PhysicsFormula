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
    var deltaSDobule = (deltaS.text as NSString).doubleValue
    var deltaTDouble = (deltaT.text as NSString).doubleValue
        
        var  result : Double = deltaSDobule/deltaTDouble
        
    resultLabel.text = String(stringInterpolationSegment: result)
        
    }
    @IBAction func clean(sender: AnyObject) {
    
    deltaS.text = nil
    deltaT.text = nil

    }
}
