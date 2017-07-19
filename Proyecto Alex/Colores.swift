//
//  Colores.swift
//  Proyecto Alex
//
//  Created by Alumno on 30/6/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class Colores{
    
    var UicolorUno :UIColor? ;
    var UicolorDos :UIColor? ;
    var UicolorTres :UIColor? ;
    
    func crearColor(_ red: Int,_ green: Int,_ blue: Int, _ alpha: Double = 1.0) -> UIColor{
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        return UIColor.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
