//
//  ViewController.swift
//  app_consultas
//
//  Created by Alumno on 27/10/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    public var docentes : [Docente] = []
    
    public var materias : [Materia] = []

    public var contactos : [Contacto] = []

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "evaluacion" {
            let destino = segue.destination as! DocenteController
            destino.docentes = docentes
        }
        if segue.identifier == "horario" {
            let destino = segue.destination as! MateriaController
            destino.materias = materias
        }
        if segue.identifier == "contactos" {
            let destino = segue.destination as! ContactoController
            destino.contactos = contactos
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactos.append(Contacto(nombre: "Alejandro Villegas", telefono: "6553289064", telefono2: "6843365410", img: "tyler2"))
        contactos.append(Contacto(nombre: "Juan Perez", telefono: "6334408673", telefono2: "6443209851", img: "tyler3"))
        
        materias.append(Materia(nombre: "Historia", hora: "8:00-10:00", faltas : 0, img: "notchecked", maestro: "Helena Zenteno"))
        materias.append(Materia(nombre: "Geografia", hora: "10:00-12:00", faltas : 2, img: "notchecked", maestro: "Derek Rincon"))
        materias.append(Materia(nombre: "Programación", hora: "12:00-14:00", faltas : 3, img: "notchecked", maestro: "Rebecca Villa"))
        materias.append(Materia(nombre: "Animacion", hora: "14:00-16:00", faltas : 3, img: "notchecked", maestro: "Vicente Plascencia"))
        
        docentes.append(Docente(nombre: "Helena Zenteno", materia: "Historia", asistencia: "4", puntualidad: "5", ejercicios: "5", trabajoEquipo: "5", recursos: "4", claridad: "4", relevancia: "4", comentario: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "))

        docentes.append(Docente(nombre: "Derek Rincon", materia: "Geografia", asistencia: "5", puntualidad: "5", ejercicios: "5", trabajoEquipo: "5", recursos: "5", claridad: "5", relevancia: "5", comentario: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "))
        
        docentes.append(Docente(nombre: "Rebecca Villa", materia: "Programación", asistencia: "5", puntualidad: "5", ejercicios: "5", trabajoEquipo: "3", recursos: "3", claridad: "5", relevancia: "3", comentario: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "))
        
        docentes.append(Docente(nombre: "Vicente Plascencia", materia: "Animacion", asistencia: "2", puntualidad: "5", ejercicios: "5", trabajoEquipo: "5", recursos: "2", claridad: "5", relevancia: "2", comentario: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "))
    }
        
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        

}

