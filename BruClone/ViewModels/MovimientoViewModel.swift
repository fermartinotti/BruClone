//
//  MovimientoViewModel.swift
//  BruClone
//
//  Created by Hector Fernando Martinotti on 09/03/2022.
//

import Foundation

class MovimientoViewModel: ObservableObject{
    @Published var movimientos:[movimientoModel]=[]
    
    
    init(){
        let movimiento=movimientoModel(descripcion: "Spotify", monto: "800", fecha: "08/03/2022", hora: "15:46", urlImagen: "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/04/hipertextual-nueva-seccion-spotify-te-ayudara-no-perderte-ningun-lanzamiento-tus-artistas-favoritos-2020479084.jpg?fit=1920%2C1152&ssl=1", tipoDeMovimiento: "EGRESO")
        movimientos.append(movimiento)
    }
    
}
