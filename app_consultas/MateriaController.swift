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
        return 120
        
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
            celda?.lblFaltas.text = "\(materias[indexPath.row].faltas)"
            celda?.imgCheck.image = UIImage(named: materias[indexPath.row].img)
        
            return celda!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AsistenciasController
        destino.materias = materias[tvMaterias.indexPathForSelectedRow!.row]
        destino.callBackAsistencia = editarAsistencia
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        materias.append(Materia(nombre: "Historia", hora: "8:00-10:00", faltas : 0, img: "notchecked", maestro: "Helena Zenteno"))
        materias.append(Materia(nombre: "Geografia", hora: "10:00-12:00", faltas : 2, img: "notchecked", maestro: "Derek Rincon"))
        materias.append(Materia(nombre: "Programación", hora: "12:00-14:00", faltas : 3, img: "notchecked", maestro: "Rebecca Villa"))
        materias.append(Materia(nombre: "Animacion", hora: "14:00-16:00", faltas : 3, img: "notchecked", maestro: "Vicente Plascencia"))
    }
    
    func editarAsistencia(materia: Materia){
        tvMaterias.reloadData()
    }
}

