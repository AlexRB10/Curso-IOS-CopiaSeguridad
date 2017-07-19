//
//  cancion.swift
//  ProyectoIos
//
//  Created by Alumno on 28/6/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import Foundation

class Pista{
    var nombrePista :String
    var nombreFoto :String
    var titulo :String = ""
    
    init(nombrePista : String, nombreFoto :String, titulo: String) {
        
        self.nombrePista = nombrePista
        self.nombreFoto = nombreFoto
        self.titulo = titulo
    }
}
