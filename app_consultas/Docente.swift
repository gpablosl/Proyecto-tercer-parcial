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
    var asistencia : String
    var puntualidad : String
    var ejercicios: String
    var trabajoEquipo : String
    var recursos : String
    var claridad : String
    var relevancia : String
    var comentario : String
    
    init(nombre: String, materia : String, asistencia : String, puntualidad : String, ejercicios: String, trabajoEquipo : String, recursos : String, claridad : String, relevancia : String, comentario : String){
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
