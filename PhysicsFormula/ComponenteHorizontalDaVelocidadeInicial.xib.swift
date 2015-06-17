//
//  FuncaoHorariaDoDeslocamento.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit
import Foundation

class ComponenteHorizontalDaVelocidadeInicial: UIView {
    @IBOutlet weak var txt_Velocidade: UITextField!
    @IBOutlet weak var lbl_Resultado: UILabel!
    @IBOutlet weak var txt_angulo: UITextField!
    
    

    @IBAction func Limpar(sender: AnyObject) {
        txt_angulo.text = nil
        txt_Velocidade.text = nil
        lbl_Resultado.text = "0.00"
    }
    @IBAction func Calcular(sender: AnyObject) {
        let velocidade = toDouble(txt_Velocidade.text)
        let angulo = toDouble(txt_angulo.text)
        
        var resultado :Double = velocidade * Double(cos(angulo))

        lbl_Resultado.text = String(format: "%.2f", resultado)
    }
    func toDouble(string: NSString) ->Double{
        let newString = string.stringByReplacingOccurrencesOfString(",", withString: ".")
        let toDouble = (newString as NSString).doubleValue
        return toDouble
    }
}
