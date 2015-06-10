//
//  ImageViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 10/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var formulaName : String!
    
    @IBOutlet weak var titleBar: UINavigationItem!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        titleBar.title = formulaName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    @IBAction func backToFormulaView(sender: AnyObject) {
   
        
        //Back to FormulaViewController
        self.dismissViewControllerAnimated(false, completion: nil)
        
    
    }


}
