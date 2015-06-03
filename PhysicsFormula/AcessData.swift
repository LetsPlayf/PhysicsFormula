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

    
    
    
}







//Receber a section e devolver os nomes das fórmulas em um array.


//Receber o nome da fórmula e devolver o nome da imagem.