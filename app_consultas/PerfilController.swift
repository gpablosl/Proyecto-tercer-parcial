//
//  PerfilController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class PerfilController : UIViewController {
    
    var perfil : Perfil?
        
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblApellidos: UILabel!
    
    @IBOutlet weak var lblTelefono: UILabel!
    
    @IBOutlet weak var lblMatricula: UILabel!
    
    @IBOutlet weak var imgPerfil: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perfil = Perfil(nombre: "Jose", apellido: "Ramirez", telefono: 6449963016, matricula: 1004586, img: "tyler1")
        
        
        
        if perfil != nil{
            self.title = perfil?.nombre
            lblNombre.text = perfil?.nombre
            lblApellidos.text = perfil?.apellido
            lblTelefono.text = "\(perfil!.telefono)"
            imgPerfil.image = UIImage(named: perfil!.img)
            lblMatricula.text = "\(perfil!.matricula)"
        }else{
            self.title = "perfil vacio"
        }
        
    }
    
}


