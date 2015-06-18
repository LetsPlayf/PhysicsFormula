//
//  FormulaViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 20/05/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit


class FormulaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    var formulaName : String!
    
    var pickerViewData = []
    
    var kindOfFormula : String!
    
    var tableViewData = []

    var formulasSection = [String]()
    
    var bigArea : String!
    
    var image : String!
    
   
    
    @IBOutlet weak var titleBar: UINavigationItem!
    
    var sectionAndFormulas : Dictionary<String,NSArray>!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var p = AcessData()
        
        kindOfFormula = pickerViewData[0] as! String
        sectionAndFormulas = p.sectionsCreator(pickerViewData[0] as! String, bigArea: bigArea)
        formulasSection = p.gettingTheSections(pickerViewData[0] as! String, bigArea: bigArea)
        titleBar.title = bigArea
        
        
        
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
        
       // formulasNames = []
        
        var ob = AcessData()
        
        formulasSection = ob.gettingTheSections(kindOfFormula, bigArea: bigArea)
        sectionAndFormulas = ob.sectionsCreator(kindOfFormula, bigArea: bigArea)
        
        self.tableView.reloadData()
        
        
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        var pickerLabel = view as! UILabel!
        if view == nil {  //if no label there yet
            pickerLabel = UILabel()
            //color the label's background
            //let hue = CGFloat(row)/CGFloat(pickerViewData.count)
            //pickerLabel.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        }
        let titleData = pickerViewData[row] as! String
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "HelveticaNeue-Bold", size: 26.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
        pickerLabel!.attributedText = myTitle
        pickerLabel.textAlignment = .Center
        return pickerLabel
    }
    
    
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 35.0
    }
    
    
    
    //MARK : Table View Delegate
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        // Return the number of sections.
        return formulasSection.count
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        
        var sectionTitle : String =  formulasSection[section]
        var sectionSection : NSArray = sectionAndFormulas[sectionTitle]!
        println(sectionSection)
        return sectionSection.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        
        return formulasSection[section]
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! FormulaNameTableViewCell
        
        
        
        var sectionTitle : String =  formulasSection[indexPath.section]
        var sectionSection : NSArray = sectionAndFormulas[sectionTitle]!

        

        
        
        var formula : String = sectionSection[indexPath.row] as! String
        
        cell.nameLabel.text = formula
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var ob = AcessData()
        var sectionTitle : String = formulasSection[indexPath.section]
        
        let indexPath = tableView.indexPathForSelectedRow()
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as! FormulaNameTableViewCell
        
        formulaName = currentCell.nameLabel.text
        
        println(currentCell.nameLabel.text)
        
        image = ob.gettinTheImageOfFormula(kindOfFormula, bigArea: bigArea, section: sectionTitle, nomeformula: formulaName)


       
        

     
        
        performSegueWithIdentifier("toImageFormula", sender: nil)
       
        
    }

    
    //MARK : Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toImageFormula" {
            let destinationVC = segue.destinationViewController as! ImageViewController
            destinationVC.formulaName = self.formulaName
            destinationVC.imageName = self.image
            
        }
    }
   
    
    
    
    
    
    //Back to ViewController
    @IBAction func backToViewController(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(false, completion: nil)
        
        
    }
    
    
    
    
    
    
}
