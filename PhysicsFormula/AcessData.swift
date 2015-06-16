//
//  AcessData.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 26/05/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import Foundation



class AcessData {
    
    // class definition goes here
    
   
    //Recebe a string da grande área e devolve suas sub áreas no picker view.
    func accessingSubAreas(bigArea : String) -> [String]{
        
      var vetPickerView = [String]()
        
         let filePath = NSBundle.mainBundle().pathForResource("formula",ofType:"json")
        
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)


        let json = JSON(data:data!)

        for (key: String, subarea: JSON) in json["formulas"][bigArea] {
            println("SwiftyJSON: \(key)")
        
            vetPickerView.append(key)
            
        }
        
    
        return vetPickerView
        
    }
        
 
    //Dado uma string do picker view devolver as sections em array.
    
    func gettingTheSections(pickerViewString : String, bigArea : String)  -> [String]{
        
        var vetPickerView = [String]()
        
        let filePath = NSBundle.mainBundle().pathForResource("formula",ofType:"json")
        
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)
        
        
        let json = JSON(data:data!)
        
        for (key: String, subarea: JSON) in json["formulas"][bigArea][pickerViewString] {
            println("SwiftyJSON: \(key)")
            
            vetPickerView.append(key)
            
        }
        
        
        return vetPickerView
    }
    
    func gettingTheFormulas(pickerViewString : String, bigArea : String, section : String) -> [String]{
        
        var vetFormulas = [String]()
        
        let filePath = NSBundle.mainBundle().pathForResource("formula",ofType:"json")
        
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)
        
        
        let json = JSON(data:data!)
        for(formula: String, subarea:JSON) in json["formulas"][bigArea][pickerViewString][section] {
            let titulo = json["formulas"][bigArea][pickerViewString][section][formula.toInt()!]["titulo"].object as! String
            vetFormulas.append(titulo)
        }
        
        return vetFormulas
    }
    
    func sectionsCreator(pickerViewString : String, bigArea : String)  -> Dictionary<String,NSArray> {
        var vetSectionsFormulas = Dictionary<String,NSArray>()
        
        var vetSections = gettingTheSections(pickerViewString, bigArea: bigArea)
        var vetFormulas = [String]()
        
        for var i = 0; i < vetSections.count; i++ {
            vetFormulas = gettingTheFormulas(pickerViewString, bigArea: bigArea, section: vetSections[i])
            
            vetSectionsFormulas[vetSections[i]] = vetFormulas
        }
        
        return vetSectionsFormulas
        
    }
    
    func gettinTheImageOfFormula(pickerViewString : String, bigArea : String, section : String, nomeformula : String) -> String {
        let filePath = NSBundle.mainBundle().pathForResource("formula",ofType:"json")
        var image : String!
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)
        
        
        let json = JSON(data:data!)
        for var i = 0; i < json["formulas"][bigArea][pickerViewString][section].count; i++ {
            var nome = json["formulas"][bigArea][pickerViewString][section][i]["titulo"].object as! String
            if nomeformula == nome{
                 image = json["formulas"][bigArea][pickerViewString][section][i]["image"].object as! String
            }
        }
        
        return image
    }
}




//Receber o nome da fórmula e devolver o nome da imagem.