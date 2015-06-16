//
//  FuncaoHorariaDoDeslocamento.swift
//  PhysicsFormula
//
//  Created by Lucas Gabriel Silvério de Freitas on 16/06/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class FuncaoHorariaDaPosicaoHorizontal: UIView {
    @IBOutlet weak var txt_Velocidade: UITextField!
    @IBOutlet weak var txt_PosicaoHorizontal: UITextField!
    @IBOutlet weak var txt_Tempo: UITextField!
    @IBOutlet weak var lbl_Resultado: UILabel!
    
    

    @IBAction func Limpar(sender: AnyObject) {
        txt_PosicaoHorizontal.text = nil
        txt_Tempo.text = nil
        txt_Velocidade.text = nil
        lbl_Resultado.text = "0.00"
    }
    @IBAction func Calcular(sender: AnyObject) {
        let velocidade = toDouble(txt_Velocidade.text)
        let posicaoInicial = toDouble(txt_PosicaoHorizontal.text)
        let tempo = toDouble(txt_Tempo.text)
        
        var resultado :Double = posicaoInicial + (velocidade * tempo)

        lbl_Resultado.text = String(format: "%.2f", resultado) + " m"
    }
    func toDouble(string: NSString) ->Double{
        let newString = string.stringByReplacingOccurrencesOfString(",", withString: ".")
        let toDouble = (newString as NSString).doubleValue
        return toDouble
    }
}
