//
//  ViewController.swift
//  Informacion
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAdvertenciaSwitch.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackActualizar = actualizarTexto
    }

    @IBAction func doTapIrOtroVC(_ sender: Any) {
        lblAdvertenciaSwitch.isHidden = true
        if swPermisoNavegacion.isOn{
            performSegue(withIdentifier: "goToModificar", sender: self)
        }else{
            lblAdvertenciaSwitch.isHidden = false
        }
    }
    
    func actualizarTexto(texto: String) {
        lblTexto.text = texto
    }
    
}

