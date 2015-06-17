//
//  FuncaoHorariaDaPosicaoEmFuncaoDoTempo.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 17/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FuncaoHorariaDaPosicaoEmFuncaoDoTempo: UIView {

    @IBOutlet weak var cleanButton: UIButton!
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var atLabel: UILabel!
    
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
        //atLabel.text = atLabel.text! + "\u{00B2}"
        
    
    }
    
   

}
