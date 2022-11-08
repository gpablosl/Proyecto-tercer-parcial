//
//  FaltasController.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class AsistenciasController: UIViewController {
    

    var checked = false
    
    
    var materias : Materia?
    
    var callBackAsistencia : ((Materia) -> Void)?

    
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblHorario: UILabel!
    
    @IBOutlet weak var lblMaestro: UILabel!
    
    @IBOutlet weak var imgCheck: UIImageView!
    
    @IBOutlet weak var lblCheck: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
            if materias != nil{
                self.title = materias?.nombre
                lblMateria.text = materias!.nombre
                lblHorario.text = materias!.hora
                lblMaestro.text = materias!.maestro
                imgCheck.image = UIImage(named: materias!.img)
                lblCheck.text = materias!.img

                if materias?.img == "check" {
                    checked = true
                }
                
                 
             }else{
                 self.title = "Detalles de Materia"
             }

        }
    

    @IBAction func doTapCheck(_ sender: Any){
        if callBackAsistencia != nil {
        checked = !checked
        imgCheck.image = checked ? UIImage(named: "check"):UIImage(named: "notchecked")
            lblCheck.text = checked ? "check":"notchecked"
            materias?.img = checked ? "check": "notchecked"

            callBackAsistencia!(materias!)
        }
    }
}
