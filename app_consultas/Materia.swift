//
//  Materia.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

class Materia{
    var nombre : String
    var hora : String
    var faltas : Int
    var img : String
    var maestro : String
    
    init(nombre: String, hora: String, faltas : Int, img : String, maestro : String){
        self.nombre = nombre
        self.hora = hora
        self.faltas = faltas
        self.img = img
        self.maestro = maestro
    }
    
}
