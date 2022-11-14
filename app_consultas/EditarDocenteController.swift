//
//  EditarDocenteController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 14/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class EditarDocenteController : UIViewController {
    
    var texto1 : String?
    var texto2 : String?
    var texto3 : String?
    var texto4 : String?
    var texto5 : String?
    var texto6 : String?
    var texto7 : String?
    var texto8 : String?
    
    var callbackActualizar1 : ((String) -> Void)?
    var callbackActualizar2 : ((String) -> Void)?
    var callbackActualizar3 : ((String) -> Void)?
    var callbackActualizar4 : ((String) -> Void)?
    var callbackActualizar5 : ((String) -> Void)?
    var callbackActualizar6 : ((String) -> Void)?
    var callbackActualizar7 : ((String) -> Void)?
    var callbackActualizar8 : ((String) -> Void)?

    @IBOutlet weak var txtAsistencica: UITextField!
    
    @IBOutlet weak var txtPuntualidad: UITextField!
    
    @IBOutlet weak var txtEjercicios: UITextField!
    
    @IBOutlet weak var txtTrabajoEquipo: UITextField!
    
    @IBOutlet weak var txtRecursos: UITextField!
    
    @IBOutlet weak var txtExplicaciones: UITextField!
    
    @IBOutlet weak var txtTemas: UITextField!
    
    @IBOutlet weak var txtComentario: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if texto1 != nil{
            txtAsistencica.text = texto1
        }
        if texto2 != nil{
            txtPuntualidad.text = texto2
        }
        if texto3 != nil{
            txtEjercicios.text = texto3
        }
        if texto4 != nil{
            txtTrabajoEquipo.text = texto4
        }
        if texto5 != nil{
            txtRecursos.text = texto5
        }
        if texto6 != nil{
            txtExplicaciones.text = texto6
        }
        if texto7 != nil{
            txtTemas.text = texto7
        }
        if texto8 != nil{
            txtComentario.text = texto8
        }
        
    }
    
    
    @IBAction func doTapActualizar(_ sender: Any) {
            callbackActualizar1!(txtAsistencica.text!)
            callbackActualizar2!(txtPuntualidad.text!)
            callbackActualizar3!(txtEjercicios.text!)
            callbackActualizar4!(txtTrabajoEquipo.text!)
            callbackActualizar5!(txtRecursos.text!)
            callbackActualizar6!(txtExplicaciones.text!)
            callbackActualizar7!(txtTemas.text!)
            callbackActualizar8!(txtComentario.text!)
        
    }
}
