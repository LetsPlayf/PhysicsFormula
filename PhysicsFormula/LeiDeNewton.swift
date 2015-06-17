//
//  FuncaoHorariaDoDeslocamento.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class LeiDeNewton: UIView {
    @IBOutlet weak var txt_massa: UITextField!
    @IBOutlet weak var txt_aceleracao: UITextField!
    @IBOutlet weak var lbl_Resultado: UILabel!
    
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }


    @IBAction func Limpar(sender: AnyObject) {
        txt_aceleracao.text = nil
        txt_massa.text = nil
    }
    @IBAction func Calcular(sender: AnyObject) {
        if(txt_aceleracao.text == "" || txt_massa.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            let massa = toDouble(txt_massa.text)
            let gravidade = toDouble(txt_aceleracao.text)
        
            var resultado :Double = massa * gravidade

            lbl_Resultado.text = String(format: "%.2f", resultado) + " N"
        }
    }
    func toDouble(string: NSString) ->Double{
        let newString = string.stringByReplacingOccurrencesOfString(",", withString: ".")
        let toDouble = (newString as NSString).doubleValue
        return toDouble
    }
}
