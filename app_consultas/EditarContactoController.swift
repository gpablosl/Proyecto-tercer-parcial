//
//  EditarContactoController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class EditarContactoController : UIViewController {
    
    var texto1 : String?
    var texto2 : String?
    var texto3 : String?
    
    @IBOutlet weak var txtNombre: UITextField!
        
    @IBOutlet weak var txtTelefono: UITextField!
    
    @IBOutlet weak var txtTelefono2: UITextField!
    
    var contacto : Contacto?
    
    var callBackEditarContacto : ((Contacto)-> Void)?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if  contacto != nil {
            txtNombre.text = contacto?.nombre
            txtTelefono.text = contacto?.telefono
            txtTelefono2.text = contacto?.telefono2

        }

        }
        
    @IBAction func doTapActualizar(_ sender: Any) {
        
        contacto?.nombre = txtNombre.text!
        contacto?.telefono = txtTelefono.text!
        contacto?.telefono2 = txtTelefono2.text!
        callBackEditarContacto!(contacto!)
        self.navigationController?.popViewController(animated: true)

    }
}
    
    

