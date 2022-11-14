//
//  DocenteController.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class DocenteController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvDocentes: UITableView!
    
    var docentes : [Docente] = []

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docentes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDocente") as? CeldaDocenteController
            celda?.lblDocente.text = docentes[indexPath.row].nombre
            celda?.lblMateria.text = docentes[indexPath.row].materia

            return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ConsultarDocenteController
        destino.docente = docentes[tvDocentes.indexPathForSelectedRow!.row]
        destino.callBackVerDocente = verDocente
    }
    

    
    func verDocente(docente: Docente){
        tvDocentes.reloadData()
    }
}
