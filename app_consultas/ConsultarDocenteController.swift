//
//  ConsultarDocenteController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class ConsultarDocenteController : UIViewController {
    
    var docente : Docente?
    
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblAsistencia: UILabel!
    
    @IBOutlet weak var lblPuntualidad: UILabel!
    
    @IBOutlet weak var lblEjercicios: UILabel!
    
    @IBOutlet weak var lblTrabajoEquipo: UILabel!
    
    @IBOutlet weak var lblRecursos: UILabel!
    
    @IBOutlet weak var lblExplicaciones: UILabel!
    
    @IBOutlet weak var lblTemas: UILabel!
    
    @IBOutlet weak var txfcomentario: UITextView!
    
    var callBackVerDocente : ((Docente) -> Void)?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if docente != nil{
            self.title = docente!.nombre
            lblMateria.text = docente!.materia
            lblAsistencia.text = "\(docente!.asistencia)"
            lblPuntualidad.text = "\(docente!.puntualidad)"
            lblEjercicios.text = "\(docente!.ejercicios)"
            lblTrabajoEquipo.text = "\(docente!.trabajoEquipo)"
            lblRecursos.text = "\(docente!.recursos)"
            lblExplicaciones.text = "\(docente!.claridad)"
            lblTemas.text = "\(docente!.relevancia)"
            txfcomentario.text = docente!.comentario
        }else{
            self.title = "docente vacio"
        }
    }
    
}
