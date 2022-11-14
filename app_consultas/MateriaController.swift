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


    }
    
    func editarAsistencia(materia: Materia){
        tvMaterias.reloadData()
    }
}

