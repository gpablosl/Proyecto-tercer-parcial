//
//  Docente.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation

class Docente{
    var nombre : String
    var materia : String
    var asistencia : Int
    var puntualidad : Int
    var ejercicios: Int
    var trabajoEquipo : Int
    var recursos : Int
    var claridad : Int
    var relevancia : Int
    var comentario : String
    
    init(nombre: String, materia : String, asistencia : Int, puntualidad : Int, ejercicios: Int, trabajoEquipo : Int, recursos : Int, claridad : Int, relevancia : Int, comentario : String){
        self.nombre = nombre
        self.materia = materia
        self.asistencia = asistencia
        self.puntualidad = puntualidad
        self.ejercicios = ejercicios
        self.trabajoEquipo = trabajoEquipo
        self.recursos = recursos
        self.claridad = claridad
        self.relevancia = relevancia
        self.comentario = comentario
    }
    
}
