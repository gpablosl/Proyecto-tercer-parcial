//
//  EditarContactoController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class EditarContactoController : UIViewController {
    
    
    @IBOutlet weak var txtNombre: UITextField!
        
    @IBOutlet weak var txtTelefono: UITextField!
    
    @IBOutlet weak var txtTelefono2: UITextField!
    
    var contacto : Contacto?
    
    var callBackEditarContacto : ((Contacto)-> Void)?
    
    override func viewDidLoad(){
        super.viewDidLoad()

        }
        
    @IBAction func doTapActualizar(_ sender: Any) {
        
        contacto?.nombre = txtNombre.text!
        contacto?.telefono = txtTelefono.text!
        contacto?.telefono2 = txtTelefono2.text!
        callBackEditarContacto!(contacto!)
        self.navigationController?.popViewController(animated: true)

    }
}
    
    

