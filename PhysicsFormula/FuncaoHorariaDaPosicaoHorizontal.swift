//
//  FuncaoHorariaDaPosicalHorizontal.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 15/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FuncaoHorariaDaPosicaoHorizontal: UIView {
    @IBOutlet weak var posicaoInicial: UITextField!
    @IBOutlet weak var tempo: UITextField!
    @IBOutlet weak var velocidadeInicial: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func btnCalcula(sender: AnyObject) {
        var posicaoInicialDouble = (posicaoInicial.text as NSString).doubleValue
        var velocidadeDouble = (velocidadeInicial.text as NSString).doubleValue
        
        var tempoDouble = (tempo.text as NSString).doubleValue
        
        let result = posicaoInicialDouble + (velocidadeDouble * tempoDouble)
        
        lblResult.text = String(format: "%.2f",result)
    }
    @IBAction func clean(sender: AnyObject) {
        
        posicaoInicial.text = nil
        tempo.text = nil
        velocidadeInicial.text = nil
        lblResult.text = nil
    }

}
