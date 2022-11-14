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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DocenteController
        destino.docentes = docentes

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

