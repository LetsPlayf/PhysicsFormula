//
//  FormulaViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 20/05/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit


class FormulaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var pickerViewData = []
    
    var kindOfFormula : String!
    
    var tableViewData = []
    
    var formulasNames = [String]()
    
    var formulasSection = [String]()
    
    var bigArea : String!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var p = AcessData()
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK : Picker View Delegates
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewData.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerViewData[row] as! String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println("Alegria em: \(pickerViewData[row] as! String)")
        
        kindOfFormula = pickerViewData[row] as! String;
        
        formulasNames = []
        
        var ob = AcessData()
        
        formulasSection = ob.gettingTheSections(kindOfFormula, bigArea: bigArea)
        self.tableView.reloadData()
        
        for(var i = 0; i<formulasSection.count ; i++ ){
            println(formulasSection[i])
            formulasNames = ob.gettingTheFormulas(kindOfFormula, bigArea: bigArea, section: formulasSection[i])
            
            for (var j = 0; j < formulasNames.count; j++) {
                println(formulasNames[j])
            }
        }
        
        
    }
    
    
    //MARK : Table View Delegate
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        // Return the number of sections.
        return 3
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return formulasNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! FormulaNameTableViewCell
        
        cell.nameLabel.text = self.formulasNames[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerCell = tableView.dequeueReusableCellWithIdentifier("headerCell") as! CustomHeaderCell
        
        
        
        return headerCell
    }
    
    
    
    
    
    //Back to ViewController
    @IBAction func backToViewController(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(false, completion: nil)
        
        
    }
    
}
