//
//  movimientoModel.swift
//  BruClone
//
//  Created by Hector Fernando Martinotti on 09/03/2022.
//

import Foundation

struct movimientoModel : Identifiable, Decodable, Encodable{
    let id: String
    var descripcion: String
    var monto: String
    var fecha: String
    var hora: String
    var urlImagen: String
    var tipoDeMovimiento: String
    
    
    init(descripcion:String, monto:String, fecha:String, hora:String, urlImagen:String, tipoDeMovimiento:String){
        id=UUID().uuidString
        self.descripcion=descripcion
        self.monto=monto
        self.fecha=fecha
        self.hora=hora
        self.urlImagen=urlImagen
        self.tipoDeMovimiento=tipoDeMovimiento
    }
}
