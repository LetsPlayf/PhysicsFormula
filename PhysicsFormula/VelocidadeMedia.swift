//
//  VelocidadeMedia.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 15/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class VelocidadeMedia: UIView {

    @IBOutlet weak var label: UILabel!
    /*
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @IBAction func changeAgain(sender: AnyObject) {
    
    label.text = "Thiago"
    
    }

    @IBOutlet weak var change: UIButton!
}
