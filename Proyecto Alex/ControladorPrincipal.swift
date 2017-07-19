//
//  Princiapl.swift
//  Proyecto Alex
//
//  Created by Alumno on 30/6/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit



class ControladorPrinciapal: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let encabezado = ["Canciones", "Artitas", "Albunes"]
    let Titulo = ["Camisa negra", "Desde que estamos juntos", "Me enamore","Soldadito Marinero"]
    let Artista = ["Juanes", "Melendi", "shakira", "Fito y Fitipaldis"]
    let Album = ["Album Juanes", "Album Melendi", "Album shakira", "Album Fito y Fitipaldis"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(encabezado[indexPath.section])")
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //numero de encabezados
        return encabezado.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CeldaPersonalizada") as! CeldaPerzonalizada
        
        if (encabezado[indexPath.section] == encabezado[0]){
            let imageStr = String.init(format: "paisaje%lu.jpeg", indexPath.row+1)
            cell.imagen?.image = UIImage.init(named: imageStr)
            cell.titulo?.text = Titulo[indexPath.row]
            cell.detalle?.text = Artista[indexPath.row]
        }else if (encabezado[indexPath.section] == encabezado[1]){
            let imageStr = String.init(format: "paisaje%lu.jpeg", indexPath.row+1)
            cell.imagen?.image = UIImage.init(named: imageStr)
            cell.titulo?.text = Artista[indexPath.row]
            cell.detalle?.text = ""
        }else if (encabezado[indexPath.section] == encabezado[2]){
            let imageStr = String.init(format: "paisaje%lu.jpeg", indexPath.row+1)
            cell.imagen?.image = UIImage.init(named: imageStr)
            cell.titulo?.text = Album[indexPath.row]
            cell.detalle?.text = Artista[indexPath.row]
        }

        return cell
    }
    
}
