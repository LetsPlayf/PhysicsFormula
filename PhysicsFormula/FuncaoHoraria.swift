//
//  FuncaoHoraria.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 15/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FuncaoHoraria: UIView {
    @IBOutlet weak var posicaoInicial: UITextField!
    @IBOutlet weak var velocidade: UITextField!
    @IBOutlet weak var tempo: UITextField!
    @IBOutlet weak var lblResult: UILabel!

    @IBAction func btnCalcula(sender: AnyObject) {
        var posicaoInicialDouble = (posicaoInicial.text as NSString).doubleValue
        var velocidadeDouble = (velocidade.text as NSString).doubleValue
        var tempoDouble = (tempo.text as NSString).doubleValue
        
        let result = posicaoInicialDouble + (velocidadeDouble * tempoDouble)
        lblResult.text = String(format: "%.2f",result)
    }
    
    @IBAction func clean(sender: AnyObject) {
        
        posicaoInicial.text = nil
        tempo.text = nil
        velocidade.text = nil
        lblResult.text = "0.0"
    }
    
    func DismissKeyboard(UITapGestureRecognizer){
        self.endEditing(true)
    }
    
}
