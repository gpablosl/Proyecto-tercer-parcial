//
//  MateriaController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class MateriaController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tvMaterias: UITableView!
    
    var materias : [Materia] = []
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
            celda?.lblMateria.text = materias[indexPath.row].nombre
            celda?.lblHorario.text = materias[indexPath.row].hora
            return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materias.append(Materia(nombre: "Historia", hora: "8:00-10:00"))
        materias.append(Materia(nombre: "Geografia", hora: "10:00-12:00"))
        materias.append(Materia(nombre: "Programación", hora: "12:00-14:00"))
    }
}
