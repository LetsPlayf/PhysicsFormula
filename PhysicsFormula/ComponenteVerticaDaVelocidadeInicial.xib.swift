//
//  FuncaoHorariaDoDeslocamento.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit
import Foundation

class ComponenteHVerticalDaVelocidadeInicial: UIView {
    @IBOutlet weak var txt_Velocidade: UITextField!
    @IBOutlet weak var lbl_Resultado: UILabel!
    @IBOutlet weak var txt_angulo: UITextField!
    
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    override func willMoveToSuperview(newSuperview: UIView?){
        cleanButton.layer.cornerRadius = 0.09 * cleanButton.bounds.size.width
        resultButton.layer.cornerRadius = 0.09 * resultButton.bounds.size.width
    }


    @IBAction func Limpar(sender: AnyObject) {
        txt_angulo.text = nil
        txt_Velocidade.text = nil
        lbl_Resultado.text = "0.00"
    }
    @IBAction func Calcular(sender: AnyObject) {
        if(txt_angulo.text == "" || txt_Velocidade.text == ""){
            
            let alert = UIAlertView()
            alert.title = "Erro"
            alert.message = "Insira um número válido"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }else{
            var velocidade = toDouble(txt_Velocidade.text)
            var angulo = toDouble(txt_angulo.text)
        
            //Conversao de graus para radiano
            angulo = (angulo * M_PI) / 180
        
            if(velocidade < 0){
            velocidade = velocidade * (-1.0)
            }

        
            var resultado :Double = velocidade * Double(sin(angulo))

            lbl_Resultado.text = String(format: "%.2f", resultado) + " m/s"
        }
    }
    func toDouble(string: NSString) ->Double{
        let newString = string.stringByReplacingOccurrencesOfString(",", withString: ".")
        let toDouble = (newString as NSString).doubleValue
        return toDouble
    }
}
