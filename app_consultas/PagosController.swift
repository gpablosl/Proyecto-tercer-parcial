//
//  PagosController.swift
//  app_consultas
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 ULSA. All rights reserved.
//
import Foundation
import UIKit

class PagosController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TvPagos: UITableView!
    
    var pagos : [Pagos] = []
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPagos") as? CeldaPagosController
            celda?.lblCiclo.text = pagos[indexPath.row].ciclo
            celda?.lblFecha.text = pagos[indexPath.row].fechaLimite
            celda?.lbllPagado.text = pagos[indexPath.row].pagado
            celda?.lblMonto.text = "\(pagos[indexPath.row].monto)"
            return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pagos.append(Pagos(ciclo: "Pago de primer mes", pagado: "Pagado", fechaLimite: "22/08/2022", monto: 4000))
        pagos.append(Pagos(ciclo: "Pago de Segundo mes", pagado: "Pagado", fechaLimite: "16/09/2022", monto: 4200))
        pagos.append(Pagos(ciclo: "Pago de Tercer mes", pagado: "Pagado", fechaLimite: "13/10/2022", monto: 4400))
        pagos.append(Pagos(ciclo: "Pago de Cuarto mes", pagado: "Pagado", fechaLimite: "09/11/2022", monto: 4200))
        pagos.append(Pagos(ciclo: "Pago de Quinto mes", pagado: "Pagado", fechaLimite: "02/12/2022", monto: 4000))

    }
}
