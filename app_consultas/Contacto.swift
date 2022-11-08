//
//  Contacto.swift
//  app_consultas
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation

class Contacto{
    var nombre : String
    var telefono : Int
    var telefono2 : Int
    var img : String
    
    init(nombre: String, telefono: Int, telefono2: Int, img : String){
        self.nombre = nombre
        self.telefono = telefono
        self.telefono2 = telefono2
        self.img = img
    }
    
}
