//
//  MenuController.swift
//  app_consultas
//
//  Created by Alumno on 01/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import Foundation
import UIKit

class MenuController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tvMenu: UITableView!
    
    
    var platillos : [Menu] = []
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platillos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as? CeldaMenuController
            celda?.lblPlatillo.text = platillos[indexPath.row].nombre
            celda?.lblPrecio.text = platillos[indexPath.row].precio
            celda?.imgPlatillo.image = UIImage(named: platillos[indexPath.row].img)
            return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        platillos.append(Menu(nombre: "Tacos", precio: "$14", img: "tacos"))
        platillos.append(Menu(nombre: "Pizza", precio: "$19", img: "pizza"))
        platillos.append(Menu(nombre: "Hamburguesa", precio: "$28", img: "hamburguesa"))

    }
}
