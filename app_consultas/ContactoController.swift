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
    @IBOutlet weak var tvMenu: UITableView!
    
    
    var contactos : [Contacto] = []
    

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
            celda?.lblTelefono1.text = "\(contactos[indexPath.row].telefono)"
            celda?.lblTelefono2.text = "\(contactos[indexPath.row].telefono2)"
            celda?.imgContacto.image = UIImage(named: contactos[indexPath.row].img)
            return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactos.append(Contacto(nombre: "Alejandro Villegas", telefono: 6553289064, telefono2: 6843365410, img: "tyler2"))
        contactos.append(Contacto(nombre: "Juan Perez", telefono: 6334408673, telefono2: 6443209851, img: "tyler3"))

    }
}
