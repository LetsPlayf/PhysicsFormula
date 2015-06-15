//
//  ImageViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 10/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

extension UIViewController {
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
}
class ImageViewController: UIViewController {

  
    @IBOutlet weak var myView: UIView!
   
    var formulaName : String!
    var imageName : String!
    
    @IBOutlet weak var titleBar: UINavigationItem!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
       // titleBar.title = formulaName
        
        println(imageName)
        //imageView.image = UIImage(named: imageName)
        

    
        myView.addSubview( ImageViewController.loadFromNibNamed(imageName)!)
        
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
