//
//  Perfil.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation

class Perfil{
    var nombre : String
    var apellido : String
    var telefono : Int
    var matricula : Int
    var img : String
    
    init(nombre: String, apellido: String, telefono: Int, matricula : Int, img : String){
        self.nombre = nombre
        self.apellido = apellido
        self.telefono = telefono
        self.matricula = matricula
        self.img = img
    }
    
}
