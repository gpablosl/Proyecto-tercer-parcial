//
//  ContactoController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class ContactoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvContactos: UITableView!
    
    var contactos : [Contacto] = []
    
    var callbackActualizar1 : ((String) -> Void)?
    var callbackActualizar2 : ((String) -> Void)?
    var callbackActualizar3 : ((String) -> Void)?
    var callbackActualizar4 : ((String) -> Void)?
    
    var callBackVerContacto : ((Contacto) -> Void)?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        
        if segue.identifier == "goToEditar"{
            let destino = segue.destination as! EditarContactoController
            destino.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
            destino.callBackEditarContacto = editarContacto
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
            celda?.lblNombre.text = contactos[indexPath.row].nombre
            celda?.lblTelefono1.text = contactos[indexPath.row].telefono
            celda?.lblTelefono2.text = contactos[indexPath.row].telefono2
            celda?.imgContacto.image = UIImage(named: contactos[indexPath.row].img)
            return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func editarContacto(contacto: Contacto){
        tvContactos.reloadData()
    }
    
}
