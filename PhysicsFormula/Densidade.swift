//
//  Densidade.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class Densidade: UIView {
    @IBOutlet weak var f: UITextField!

    @IBOutlet weak var a: UITextField!
   
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!

    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }
    
    @IBAction func calculate(sender: AnyObject) {
    
    
    
    }
    
    @IBAction func clean(sender: AnyObject) {
    
    
    
    
    }
    
}
   