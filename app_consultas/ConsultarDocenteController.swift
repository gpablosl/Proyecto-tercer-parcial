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
    
    var callbackActualizar1 : ((String) -> Void)?
    var callbackActualizar2 : ((String) -> Void)?
    var callbackActualizar3 : ((String) -> Void)?
    var callbackActualizar4 : ((String) -> Void)?
    var callbackActualizar5 : ((String) -> Void)?
    var callbackActualizar6 : ((String) -> Void)?
    var callbackActualizar7 : ((String) -> Void)?
    var callbackActualizar8 : ((String) -> Void)?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! EditarDocenteController
        destino.texto1 = lblAsistencia.text
        destino.texto2 = lblPuntualidad.text
        destino.texto3 = lblEjercicios.text
        destino.texto4 = lblTrabajoEquipo.text
        destino.texto5 = lblRecursos.text
        destino.texto6 = lblExplicaciones.text
        destino.texto7 = lblTemas.text
        destino.texto8 = txfcomentario.text

        destino.callbackActualizar1 = actualizarTexto1
        destino.callbackActualizar2 = actualizarTexto2
        destino.callbackActualizar3 = actualizarTexto3
        destino.callbackActualizar4 = actualizarTexto4
        destino.callbackActualizar5 = actualizarTexto5
        destino.callbackActualizar6 = actualizarTexto6
        destino.callbackActualizar7 = actualizarTexto7
        destino.callbackActualizar8 = actualizarTexto8

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if docente != nil{
            self.title = docente!.nombre
            lblMateria.text = docente!.materia
            lblAsistencia.text = docente!.asistencia
            lblPuntualidad.text = docente!.puntualidad
            lblEjercicios.text = docente!.ejercicios
            lblTrabajoEquipo.text = docente!.trabajoEquipo
            lblRecursos.text = docente!.recursos
            lblExplicaciones.text = docente!.claridad
            lblTemas.text = docente!.relevancia
            txfcomentario.text = docente!.comentario
        }else{
            self.title = "docente vacio"
        }
    }
    
    func actualizarTexto1(texto1: String){
        if docente != nil{
        lblAsistencia.text = texto1
        docente!.asistencia = texto1
        callBackVerDocente!(docente!)
        }
    }
    func actualizarTexto2(texto2: String){
        lblPuntualidad.text = texto2
        docente!.puntualidad = texto2
        callBackVerDocente!(docente!)
    }
    func actualizarTexto3(texto3: String){
        lblEjercicios.text = texto3
        docente?.ejercicios = texto3
        callBackVerDocente!(docente!)
    }
    func actualizarTexto4(texto4: String){
        lblTrabajoEquipo.text = texto4
        docente!.trabajoEquipo = texto4
        callBackVerDocente!(docente!)
    }
    func actualizarTexto5(texto5: String){
        lblRecursos.text = texto5
        docente!.recursos = texto5
        callBackVerDocente!(docente!)
    }
    func actualizarTexto6(texto6: String){
        lblExplicaciones.text = texto6
        docente!.claridad = texto6
        callBackVerDocente!(docente!)
    }
    func actualizarTexto7(texto7: String){
        lblTemas.text = texto7
        docente!.relevancia = texto7
        callBackVerDocente!(docente!)
    }
    func actualizarTexto8(texto8: String){
        txfcomentario.text = texto8
        docente!.comentario = texto8
        callBackVerDocente!(docente!)
    }
}
