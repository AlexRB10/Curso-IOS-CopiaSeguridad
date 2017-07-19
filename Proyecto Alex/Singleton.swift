//
//  Singleton.swift
//  Proyecto Alex
//
//  Created by Alumno on 11/7/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import Foundation

class ControllerData {

    static let shareController = ControllerData()
    var albumes: [Album]
    var miAlbum: [Album]
    var miBusqueda: [Album]
    private init(){
        
        albumes = [Album.init(nombreAlbum: "El Dorado", nombreArtista: "Shakira", fotoAlbum: "Shakira.png",pista: elDorado),
                   Album.init(nombreAlbum: "Munay", nombreArtista: "Vanesa Martín", fotoAlbum: "vanesa.jpg", pista: munay),
                   Album.init(nombreAlbum: "Quítate Las Gafas", nombreArtista: "Melendi", fotoAlbum: "melendi.jpg", pista: quitateLasGafas),
                   Album.init(nombreAlbum: "La Montaña Rusa", nombreArtista: "Dani Martín", fotoAlbum: "dani martin.png", pista: laMontañaRusa),
                   Album.init(nombreAlbum: "Qué Tú Tienes", nombreArtista: "Dvicio", fotoAlbum: "dvicio.jpg", pista: queTuTienes),
                   Album.init(nombreAlbum: "El Planeta Imaginario", nombreArtista: "La Oreja de Van Gogh", fotoAlbum: "la oreja.jpg", pista: elPlatenaImagiario),
                   Album.init(nombreAlbum: "Hijos Del Mar", nombreArtista: "Davis Bisbal", fotoAlbum: "david bisbal.png", pista: hijosDelMar),
                   Album.init(nombreAlbum: "Primera Cita", nombreArtista: "CNCO", fotoAlbum: "cnco.jpg", pista: primeraCita),
                   Album.init(nombreAlbum: "Amor De Los Dos", nombreArtista: "Bustamante", fotoAlbum: "bustamante.jpg", pista: amorDeLosDos),
                   Album.init(nombreAlbum: "Divide", nombreArtista: "Ed Sheeran", fotoAlbum: "divide.jpg", pista: divide),
                   Album.init(nombreAlbum: "24K Magic", nombreArtista: "Bruno Mars", fotoAlbum: "Bruno.jpg", pista: magic),
                   Album.init(nombreAlbum: "Dangerous Woman", nombreArtista: "Ariana Grande", fotoAlbum: "ariana Grande.jpg", pista: dangerousWoman )]
        
        
        miAlbum = [ Album.init(nombreAlbum: "Amor De Los Dos", nombreArtista: "Bustamante", fotoAlbum: "bustamante.jpg", pista: amorDeLosDos),
                    Album.init(nombreAlbum: "Divide", nombreArtista: "Ed Sheeran", fotoAlbum: "divide.jpg", pista: divide),
                    Album.init(nombreAlbum: "24K Magic", nombreArtista: "Bruno Mars", fotoAlbum: "Bruno.jpg", pista: magic),
                    Album.init(nombreAlbum: "Dangerous Woman", nombreArtista: "Ariana Grande", fotoAlbum: "ariana Grande.jpg", pista: dangerousWoman ),
                    Album.init(nombreAlbum: "El Dorado", nombreArtista: "Shakira", fotoAlbum: "Shakira.png",pista: elDorado),]
        
        miBusqueda = [
            Album.init(nombreAlbum: "Divide", nombreArtista: "Ed Sheeran", fotoAlbum: "divide.jpg", pista: divide),]
        
    }
    
    
    
    
    
    var elDorado : [Pista] = [Pista.init(nombrePista: "Me Enamoré", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Nada", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Chantaje", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "When a Woman", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Amarillo", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Perro Fiel", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Trap", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Comme moi", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Coconut Tree", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "La Bicicleta", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Déjà vu", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "What We Said", nombreFoto: "Shakira.png", titulo: ""),
                              Pista.init(nombrePista: "Toneladas", nombreFoto: "Shakira.png", titulo: "")]
    
    
    var munay : [Pista] = [Pista.init(nombrePista: "Complicidad", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Ya", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Si me abrazaras", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Inmunes", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Que se entere Madrid", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Santo y Seña", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Te has perdido quién soy", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Nunca me conoció", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Sucederá", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Descubrí", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "El amor no se explica", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Manzanas envenenadas", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Porque queramos vernos", nombreFoto: "vanesa.jpg", titulo: ""),
                           Pista.init(nombrePista: "Complicidad", nombreFoto: "vanesa.jpg", titulo: "")]
    
    
    
    
    var quitateLasGafas : [Pista] = [Pista.init(nombrePista: "Flores de agua y plomo", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Destino o casualidad", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Hijos del mal", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Desde que estamos juntos", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "La casa no es igual", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Mi mayor fortuna - feat. choc quib town", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Un amor tan grande", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Soy tu superhéroe", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Existen los ángeles", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Quitate las gafas", nombreFoto: "melendi.jpg", titulo: ""),
                                     Pista.init(nombrePista: "Yo me veo contigo", nombreFoto: "melendi.jpg", titulo: "")]
    
    var laMontañaRusa : [Pista] = [
        Pista.init(nombrePista: "Las Ganas", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Los Charcos", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "París", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Paloma", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Dibujas", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Nada más que tú", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Que se mueran de envidia", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Romperás", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Guerra de pasos", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Pelear", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Ahora", nombreFoto: "dani martin.png", titulo: ""),
        Pista.init(nombrePista: "Madrid, Madrid, Madrid", nombreFoto: "dani martin.png", titulo: "")]
    
    var queTuTienes : [Pista] = [Pista.init(nombrePista: "Idiota", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Casi humanos", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Qué tienes tú", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Quién soy", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "No te vas", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Sácame de aquí", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Inevitable", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Donde vayas", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Mía", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Quédate ", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Te espero", nombreFoto: "dvicio.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Superhéroe", nombreFoto: "dvicio.jpg", titulo: ""),]
    
    
    var elPlatenaImagiario : [Pista] = [Pista.init(nombrePista: "Estoy contigo", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Diciembre", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Verano", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Esa chica", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Pálida Luna", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Camino de tu corazón", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Intocables", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "No vales más que yo", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Cuando menos lo merezca", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Mi pequeño gran valiente", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Siempre", nombreFoto: "la oreja.jpg", titulo: ""),
                                        Pista.init(nombrePista: "Tan guapa", nombreFoto: "la oreja.jpg", titulo: "")]
    
    
    
    var hijosDelMar : [Pista] = [Pista.init(nombrePista: "Antes Que No", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Camino A La Verdad", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Duele Demasiado", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Fiebre", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Fue Nuestro Amor", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Hijos Del Mar", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Lo Tenga O No", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Mi Norte Es Tú Sur", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Una Palabra", nombreFoto: "david bisbal.png", titulo: ""),
                                 Pista.init(nombrePista: "Yo Te Enseñare A Olvidar", nombreFoto: "david bisbal.png", titulo: "")]
    
    var primeraCita : [Pista] = [Pista.init(nombrePista: "Quisiera", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Tan Fácil", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Reggaetón Lento", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Primera Cita", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Para Enamorarte", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "No Entiendo", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Devuélveme Mi Corazón", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Cometa", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Volverte a Ver", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Tu Luz", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Cien", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Más Allá", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Quisiera", nombreFoto: "cnco.jpg", titulo: ""),
                                 Pista.init(nombrePista: "Tan Fácil", nombreFoto: "cnco.jpg", titulo: "")]
    
    var amorDeLosDos : [Pista] = [Pista.init(nombrePista: "TOTAL", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "BÉSAME MUCHO", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "LA PUERTA", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "CIELO ROJO", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "CORAZÓN CORAZÓN", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "VOY A APAGAR LA LUZ", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "SOMBRAS", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "COMO YO TE AMÉ", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "ELLA", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "LA MENTIRA", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "JÚRAME", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "AMOR DE LOS DOS", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "TATUAJES", nombreFoto: "bustamante.jpg", titulo: ""),
                                  Pista.init(nombrePista: "HISTORIA DE UNA AMOR", nombreFoto: "bustamante.jpg", titulo: ""),]
    
    var divide : [Pista] = [Pista.init(nombrePista: "Eraser", nombreFoto: "divide.jpg", titulo: "01 - Eraser"),
                            Pista.init(nombrePista: "Castle On The Hill", nombreFoto: "divide.jpg", titulo: "02 - Castle on the Hill"),
                            Pista.init(nombrePista: "Dive", nombreFoto: "divide.jpg", titulo: "03 - Dive"),
                            Pista.init(nombrePista: "Shape Of You", nombreFoto: "divide.jpg", titulo: "04 - Shape of You"),
                            Pista.init(nombrePista: "Perfect", nombreFoto: "divide.jpg", titulo: "05 - Perfect"),
                            Pista.init(nombrePista: "Galway Girl", nombreFoto: "divide.jpg", titulo: "06 - Galway Girl"),
                            Pista.init(nombrePista: "Happier", nombreFoto: "divide.jpg", titulo: "07 - Happier"),
                            Pista.init(nombrePista: "New Man", nombreFoto: "divide.jpg", titulo: "08 - New Man"),
                            Pista.init(nombrePista: "Hearts Don’t Break Around Here", nombreFoto: "divide.jpg", titulo: "09 - Hearts Don't Break Around Here"),
                            Pista.init(nombrePista: "What Do I Know?", nombreFoto: "divide.jpg", titulo: "10 - What Do I Know"),
                            Pista.init(nombrePista: "How Would You Feel", nombreFoto: "divide.jpg", titulo: "11 - How Would You Feel (Paean)"),
                            Pista.init(nombrePista: "Supermarket Flowers", nombreFoto: "divide.jpg", titulo: "12 - Supermarket Flowers"),
                            Pista.init(nombrePista: "Barcelona", nombreFoto: "divide.jpg", titulo: "13 - Barcelona"),
                            Pista.init(nombrePista: "Bibia Be Ye Ye", nombreFoto: "divide.jpg", titulo: "14 - Bibia Be Ye Ye"),
                            Pista.init(nombrePista: "Nancy Mulligan", nombreFoto: "divide.jpg", titulo: "15 - Nancy Mulligan"),
                            Pista.init(nombrePista: "Save Myself", nombreFoto: "divide.jpg", titulo: "16 - Save Myself"),]
    
    var magic : [Pista] = [Pista.init(nombrePista: "24K Magic", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Chunky", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Perm", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "That’s What I Like", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Versace On The Floor", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Straight Up &amp; Down", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Calling All My Lovelies", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Finesse", nombreFoto: "Bruno.jpg", titulo: ""),
                           Pista.init(nombrePista: "Too Good To Say Goodbye", nombreFoto: "Bruno.jpg", titulo: ""),]
    
    var dangerousWoman : [Pista] = [Pista.init(nombrePista: "Moonlight", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Dangerous Woman", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Be Alright", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Into You", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Side By Side", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Let Me Love You", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Greedy", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Leave Me Lonely", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Everyday", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "Sometimes", nombreFoto: "ariana Grande.jpg", titulo: ""),
                                    Pista.init(nombrePista: "I Don`t Care", nombreFoto: "ariana Grande.jpg", titulo: ""),]
    
}

//ControllerData.shareController.//
