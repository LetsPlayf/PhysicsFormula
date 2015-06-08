//
//  ViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/05/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var pickerViewData = []

    var bigArea : String!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
            
        }
    
    //MARK : Buttons in View
    
    //Mechanic Button
    @IBAction func mechanicButton(sender: AnyObject) {
    //pickerViewData = ["Cinemática", "Dinâmica", "Estática", "Hidrostática", "Gravitação Universal"]
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Mecânica")
        bigArea = "Mecânica"
        
    
        performSegueWithIdentifier("toFormulaView", sender: nil)
    }
   
    //Wave Button
    @IBAction func waveButton(sender: AnyObject) {
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Ondulatória")
        bigArea = "Ondulatória"
    
        
        
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    // Electromagnestism button
    @IBAction func electricMagnetism(sender: AnyObject) {
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Elétromagnetismo")
        bigArea = "Elétromagnetismo"
        
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    
    // Optic Button
    @IBAction func opticButton(sender: AnyObject) {
    
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Ótica")
        bigArea = "Ótica"
        
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    //Thermology Button
    @IBAction func thermologyButton(sender: AnyObject) {
    
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Termologia")
        bigArea = "Termologia"
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    
    
    
    
    //Prepeare for Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationVC = segue.destinationViewController as! FormulaViewController
            destinationVC.pickerViewData = self.pickerViewData
            destinationVC.bigArea = self.bigArea
        
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

