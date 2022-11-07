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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docentes.append(Docente(nombre: "Helena Zenteno", materia: "Historia", asistencia: 5, puntualidad: 5, ejercicios: 5, trabajoEquipo: 5, recursos: 5, claridad: 5, relevancia: 5, comentario: ""))

        docentes.append(Docente(nombre: "Derek Rincon", materia: "Geografia", asistencia: 5, puntualidad: 5, ejercicios: 5, trabajoEquipo: 5, recursos: 5, claridad: 5, relevancia: 5, comentario: ""))
        
        docentes.append(Docente(nombre: "Rebecca Villa", materia: "Programación", asistencia: 5, puntualidad: 5, ejercicios: 5, trabajoEquipo: 5, recursos: 5, claridad: 5, relevancia: 5, comentario: ""))
        
        docentes.append(Docente(nombre: "Vicente Plascencia", materia: "Animacion", asistencia: 5, puntualidad: 5, ejercicios: 5, trabajoEquipo: 5, recursos: 5, claridad: 5, relevancia: 5, comentario: ""))
    }
}
