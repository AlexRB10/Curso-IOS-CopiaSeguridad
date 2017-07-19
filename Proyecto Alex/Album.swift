//
//  Album.swift
//  ProyectoIos
//
//  Created by Alumno on 28/6/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import Foundation

class Album {
    var nombreAlbum :String
    var fotoAlbum :String
    var nombreArtista :String
    var pista : [Pista]
    
    init(nombreAlbum: String, nombreArtista: String,fotoAlbum: String, pista : [Pista]) {
        self.nombreAlbum = nombreAlbum
        self.fotoAlbum = fotoAlbum
        self.nombreArtista = nombreArtista
        self.pista = pista
    }
}
