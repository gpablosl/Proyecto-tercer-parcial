//
//  Pagos.swift
//  app_consultas
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation

class Pagos{
    var ciclo : String
    var pagado : String
    var fechaLimite : String
    var monto : Int
    
    init(ciclo: String, pagado : String, fechaLimite : String, monto : Int){
        self.ciclo = ciclo
        self.pagado = pagado
        self.fechaLimite = fechaLimite
        self.monto =  monto
    }
}
